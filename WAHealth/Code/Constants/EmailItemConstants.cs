using Sitecore.Data;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace WAHealth.ECM.Ignia.WAHealth.Code.Constants
{
  public static class EmailItemConstants
  {
    public static ID HeaderTemplateID = new ID("{A810D565-A29E-415F-90B9-5D40301E24BF}");
    public static ID AgendaTemplateID = new ID("{1673DA9A-6218-411F-B603-7970F83D7E31}");
    public static ID CampaignPanelID = new ID("{D5E28EC2-AF2C-4603-9AB1-DF10E94102D1}");
    public static ID TwoColumnID = new ID("{03E256F4-5FDA-4452-996C-19354ECAFBA5}");
    public static ID MonthlyTopicID = new ID("{DF17A7EC-23E4-46AD-9AA1-F9910E438212}");
    public static ID NewsletterDataID = new ID("{82F6B745-B3DD-4413-9236-4727EAEC1A60}");

    /*These need to be updated to the actual pages*/
    public static ID ContactUsPage = new ID("{110D559F-DEA5-42EA-9C1C-8A5DF7E70EF9}");
    public static ID UnsubscribePage = new ID("{110D559F-DEA5-42EA-9C1C-8A5DF7E70EF9}");
    public static ID UpdatePreferences = new ID("{110D559F-DEA5-42EA-9C1C-8A5DF7E70EF9}");
    public static ID PrivacyPolicy = new ID("{110D559F-DEA5-42EA-9C1C-8A5DF7E70EF9}");

    //HealthyWA Header links
    public static ID HealthyLiving = new ID("{110D559F-DEA5-42EA-9C1C-8A5DF7E70EF9}");
    public static ID HealthConditions = new ID("{110D559F-DEA5-42EA-9C1C-8A5DF7E70EF9}");
    public static ID TreatmentsAndTests = new ID("{110D559F-DEA5-42EA-9C1C-8A5DF7E70EF9}");
    public static ID SafetyAndFirstAid = new ID("{110D559F-DEA5-42EA-9C1C-8A5DF7E70EF9}");

    //URL query string values
    public static string EcmIdQuery = "ec_id";
    public static string MessageBodyQyery = "message"; 

    public static Database DB = Sitecore.Context.Database;//.Data.Database.GetDatabase("web")
  }
}