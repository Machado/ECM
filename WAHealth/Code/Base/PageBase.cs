


namespace WAHealth.ECM.Ignia.WAHealth.Code.Base
{
  using Sitecore.Data;
  using Sitecore.Data.Fields;
  using Sitecore.Data.Items;
  using Sitecore.Diagnostics;
  using Sitecore.Globalization;
  using Sitecore.Modules.EmailCampaign;
  using Sitecore.Modules.EmailCampaign.Core;
  using Sitecore.Modules.EmailCampaign.Messages;
  using Sitecore.SecurityModel;
  using Sitecore.Web;
  using Sitecore.Web.UI.HtmlControls;
  using System;
  using System.Collections.Generic;
  using System.Linq;
  using System.Reflection;
  using System.Web;
  using WAHealth.Code.Constants;
  public abstract class PageBase : Page
  {
    //Variables
    protected string MonthYear { get; set; }
    protected string ViewOnline { get; set; }
    //Sitecore Pages
    protected string ContactUs { get; set; }
    protected string Unsubscribe { get; set; }
    protected string UpdatePreferences { get; set; }
    protected string PrivacyPolicy { get; set; }
    //Footer details
    protected string ReferenceSite { get; set; }
    protected string ReferenceSiteUrl { get; set; }
    protected string ContactEmail { get; set; }
    protected string Address { get; set; }
    protected string PhoneNumber { get; set; }
    private Database db {
      get { return EmailItemIDConstants.DB; }
    } 
    protected static Item Newsletter
    {
      get { return Sitecore.Context.Item; }
    }
    protected Item NewsletterData { get; set; }

    protected void Page_PreLoad(object sender, System.EventArgs e)
    {
      DateField dateField = (DateField)Newsletter.Fields[FieldIDConstants.__Created];
      Assert.IsNotNull(dateField, "datefield");
      MonthYear = dateField.DateTime.ToString("MMMM yyyy");

      //Get associated newsletter data 
      NewsletterData = Newsletter.Children.InnerChildren.Find(x => x.TemplateID == EmailItemIDConstants.NewsletterData);
      Assert.IsNotNull(NewsletterData, "item");

      ReferenceSite = NewsletterData[FieldIDConstants.NewsletterReferenceSite];
      PhoneNumber = NewsletterData[FieldIDConstants.NewsletterPhoneNumber];
      ContactEmail = String.Concat("mailto:", NewsletterData[FieldIDConstants.NewsletterContactEmail]);
      Address = NewsletterData[FieldIDConstants.NewsletterAddress];
      SetURLs();
      LoadAdditionalData();
    } 
    protected void SetURLs()
    {
      ViewOnline = GetUrl(Newsletter);
      ContactUs = GetUrl(GetItem(FieldIDConstants.HospitalContactUsPage));
      ReferenceSiteUrl = String.Concat("http://", NewsletterData[FieldIDConstants.NewsletterReferenceSite]);
      //Unsubscribe = GetUrl(GetItem(EmailItemIDConstants.UnsubscribePage));
      //UpdatePreferences = GetUrl(GetItem(EmailItemIDConstants.UpdatePreferences));
      PrivacyPolicy = GetUrl(GetItem(FieldIDConstants.HospitalPrivacyPage));
    }
     
    protected abstract void LoadAdditionalData();
     

    protected Item GetItem(ID id)
    {
      Assert.IsNotNull(id, "id");
      return db.GetItem(id);
    }

    protected string GetUrl(Item item)
    {
      Sitecore.Links.UrlOptions urlOptions = (Sitecore.Links.UrlOptions)Sitecore.Links.UrlOptions.DefaultOptions.Clone(); 
      urlOptions.SiteResolving = Sitecore.Configuration.Settings.Rendering.SiteResolving; 
      return Sitecore.Links.LinkManager.GetItemUrl(item, urlOptions); 
    }
  }
}