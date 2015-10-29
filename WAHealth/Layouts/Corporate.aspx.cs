using Sitecore.Data.Fields;
using Sitecore.Diagnostics;
using Sitecore.Links;
using System;
using WAHealth.ECM.Ignia.WAHealth.Code.Constants;
namespace WAHealth.ECM.Ignia.WAHealth.Layouts
{
  public partial class Corporate : WAHealth.Code.Base.PageBase
  {
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
        ContactEmailSpan.InnerText = ContactEmail;
        AddressSpan.InnerText = Address;

        ContactEmailUrl.NavigateUrl = String.Concat("mailto:", ContactEmail);
    }
  }
}
