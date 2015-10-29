using Sitecore.Data;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace WAHealth.ECM.Ignia.WAHealth.Code.Constants
{
    public static class FieldIDConstants
    {
        //Field IDs 
        //Newsletter Fields
        //Campaign Panel Data
        public static ID CampaignPanels = new ID("{4003BB71-81E9-4B91-A3FE-197FC276CAE0}");
        //Header Data
        public static ID HeaderImageField = new ID("{FB3430BE-71C4-4FCD-9AE9-207B6DB8A15B}");
        public static ID HeaderTitle = new ID("{ED7BDDEF-1CC2-4E2B-8700-C9B602B36245}");
        public static ID HeaderSubling = new ID("{F10CE942-CD0A-4577-91A3-77B0DE54A9D2}");
        public static ID HeaderBackgroundColour = new ID("{C5671D20-2982-4538-9D49-5626884D2A34}");
        //Monthly Topic Data
        public static ID TopicTitle = new ID("{839A36C6-218F-4CE3-AD76-B62F1FA85D0D}");
        public static ID TopicCategory = new ID("{EE5CA208-6A66-47B2-BBDD-2B97C4C90266}");
        public static ID TopicImage = new ID("{A97063B4-72F6-4C39-9F53-4D1478FD496E}");
        public static ID TopicLinks = new ID("{4F16C3B5-6705-4D84-A7E6-60E07C6C7355}");
        //Newsletter Agenda Data
        public static ID AgendaTitle = new ID("{C6992529-52AF-44B7-8AA4-3C2A06E62C36}");
        public static ID AgendaImage = new ID("{81BDE8B9-B6B7-40D0-969E-3ED545F85D5B}");
        public static ID AgendaLinks = new ID("{279711A5-F562-4F3B-B786-9C80A077C8BB}");
        //Newsletter Data
        public static ID NewsletterReferenceSite = new ID("{6DEE0D60-BAAA-4F74-BA6B-70CEF996DA2F}");
        public static ID NewsletterPhoneNumber = new ID("{26B8851E-ED55-45EA-A3A9-8073AD1D550C}");
        public static ID NewsletterContactEmail = new ID("{DFB40090-9337-45B6-AB17-69BCD5C71A18}");
        public static ID NewsletterAddress = new ID("{04806C5E-BBD0-43D7-9CF6-BA9565E60237}");
        public static ID PointerImage = new ID("{DDEAAEAA-9D12-4BD1-B83C-788D752CBED5}");
        //Hospital Field
        public static ID HospitalReference = new ID("{7AF7F0B7-24E6-4818-AB49-9629D6184629}");
        //Two Columns Data
        public static ID StoryColumns = new ID("{F69ACB90-AE65-45E4-948A-7EA2C124DFC8}");
        //Core Sitecore Created Field
        public static ID __Created = new ID("{25BED78C-4957-4165-998A-CA1B52F67497}");
        //Hospital Data
        public static ID HospitalWebsiteUrl = new ID("{1DCA0537-069A-4A2E-BCA2-35A1152C0E40}");
        public static ID HospitalBranchColour = new ID("{4DAE0516-17BC-4565-874C-B846898485A7}");
        public static ID HospitalPhoneNumber = new ID("{0966F62E-0B62-40EF-B22B-CBBDD6C905FF}");
        public static ID HospitalContactEmail = new ID("{F6BFA034-9272-4593-9C09-F214F68369D9}");
        public static ID HospitalStreetAddress = new ID("{009A0078-2A39-4B52-9FF2-9E16FE87E5DE}");
        public static ID HospitalLogo = new ID("{B95A7AA0-FE18-46B7-AA0B-FE4CE7A654B2}");
        public static ID HospitalContactUsPage = new ID("{7E9812C2-6500-4EBD-82E0-0BF37F444DB9}");
        public static ID HospitalPrivacyPage = new ID("{348B4212-9CD1-44A7-A040-FB1308F25C67}");

        public static Database DB = Sitecore.Context.Database;//.Data.Database.GetDatabase("web")
    }
}