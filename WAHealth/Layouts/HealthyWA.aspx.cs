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

    public partial class HealthyWA : WAHealth.Code.Base.PageBase
    {
        protected override void LoadAdditionalData()
        {
            ReferenceField HospitalDataField = NewsletterData.Fields[FieldIDConstants.HospitalReference];
            var HospitalData = HospitalDataField.TargetItem;
            Assert.IsNotNull(HospitalData, "item");

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
            ContactEmailSpan.InnerText = ContactEmail;

            ContactEmailUrl.NavigateUrl = String.Concat("mailto:", ContactEmail);
        }
    }
}
