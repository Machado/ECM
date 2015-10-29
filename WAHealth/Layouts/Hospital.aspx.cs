namespace WAHealth.ECM.Ignia.WAHealth.Layouts
{
    using System;
    using System.Web;
    using System.Web.UI;
    using Ignia.WAHealth.Code.Constants;
    using Sitecore.Data.Fields;
    using Sitecore.Data.Items;
    using Sitecore.Diagnostics;
    using Sitecore.Links;

    public partial class Hospital : WAHealth.Code.Base.PageBase
    {
        protected string StyleSheet { get; set; }

        protected override void LoadAdditionalData()
        {
            ReferenceField HospitalDataField = NewsletterData.Fields[FieldIDConstants.HospitalReference];
            var HospitalData = HospitalDataField.TargetItem;
            Assert.IsNotNull(HospitalData, "item");

            Sitecore.Data.Fields.ImageField imageFooter = HospitalData.Fields["Image Footer"];
            imgFooter.Src = (imageFooter.MediaItem != null) ? Sitecore.Resources.Media.MediaManager.GetMediaUrl(imageFooter.MediaItem) : string.Empty;

     
            ReferenceSite = HospitalData[FieldIDConstants.HospitalWebsiteUrl];
            ContactEmail = HospitalData[FieldIDConstants.HospitalContactEmail];
            Address = HospitalData[FieldIDConstants.HospitalStreetAddress];
            PhoneNumber = HospitalData[FieldIDConstants.HospitalPhoneNumber];

            //Get the newsletter specific contact us page and privacy policy 
            Sitecore.Data.Fields.ReferenceField contactUsPage = HospitalData.Fields[FieldIDConstants.HospitalContactUsPage];
            ContactUsUrl.NavigateUrl = (contactUsPage.TargetItem != null) ? LinkManager.GetItemUrl(contactUsPage.TargetItem) : string.Empty;// LinkManager.GetItemUrl(Sitecore.Context.Database.GetItem(EmailItemIDConstants.ContactUsPage));

            Sitecore.Data.Fields.ReferenceField privacyPolicy = HospitalData.Fields[FieldIDConstants.HospitalPrivacyPage];
            PrivacyPolicyUrl.NavigateUrl = (privacyPolicy.TargetItem != null) ? LinkManager.GetItemUrl(privacyPolicy.TargetItem) : string.Empty;

            ViewOnlineUrl.NavigateUrl = ViewOnline;
            linkReferenceSite.NavigateUrl = ReferenceSiteUrl;

            MonthYearSpan.InnerText = MonthYear;
            ReferenceSiteSpan.InnerText = ReferenceSite;
            PhoneNumberSpan.InnerText = PhoneNumber;
            ContactEmailSpan.InnerText = ContactEmail;
            AddressSpan.InnerText = Address;

            ContactEmailUrl.NavigateUrl = String.Concat("mailto:", ContactEmail);


            FileField CSSMediaItem = HospitalData.Fields[FieldIDConstants.HospitalBranchColour];
            var CssItem = CSSMediaItem.MediaItem;
            Assert.IsNotNull(CssItem, "item");

            GetCSSMediaFile(CssItem);
        }


        private void GetCSSMediaFile(Item item)
        {
            string myUploadedFile = string.Empty;
            Sitecore.Data.Fields.FileField myBlobField = item.Fields["Blob"];

            System.IO.Stream myBlobStream = myBlobField.InnerField.GetBlobStream();
            using (System.IO.StreamReader reader = new System.IO.StreamReader(myBlobStream))
            {
                myUploadedFile = reader.ReadToEnd();
                myUploadedFile = String.Format("<style type=\"text/css\" id=\"PageStyleSheet\" >{0}</style>", myUploadedFile);
                PageCssFile.Text = myUploadedFile;
            }
        }
    }
}
