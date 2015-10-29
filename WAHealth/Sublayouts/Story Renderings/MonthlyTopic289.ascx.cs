namespace WAHealth.ECM.Ignia.WAHealth.Sublayouts.Story_Renderings
{
    using Sitecore.Data;
    using Sitecore.Data.Fields;
    using Sitecore.Data.Items;
    using Sitecore.Diagnostics;
    using Sitecore.Web.UI.WebControls;
    using System;
    using System.Web.UI.WebControls;
    using WAHealth.Code.Constants;
    public partial class MonthlyTopic289 : WAHealth.Code.Base.ComponentBase
    {
        public string PointerImage { get; set; }
        protected override Item LoadDataSource()
        {
            Assert.IsNotNull(DataSource, "item");
            return DataSource;
        }
        protected override void SetFields()
        {
            AgendaTitleField.Item = DataSource;
            PromoImageField.Item = DataSource;
            CategoryField.Item = DataSource;
            PointerImage = GetPointerImage();
            AgendaLinksRepeater.ItemDataBound += AgendaLinksOnItemDataBound;
            BindAgendaRepeater();
        }

        private void AgendaLinksOnItemDataBound(object sender, RepeaterItemEventArgs e)
        {
            if (e.Item.ItemType == ListItemType.Item || e.Item.ItemType == ListItemType.AlternatingItem)
            {
                var myItem = e.Item.DataItem as Item;
                if (myItem != null)
                {
                    var lnkArticle = e.Item.FindControl("lnkArticleItem") as HyperLink;
                    if (lnkArticle != null)
                    {
                        lnkArticle.NavigateUrl = Sitecore.Links.LinkManager.GetItemUrl(myItem);
                        lnkArticle.Text = myItem.Name;
                    }
                }
            }
        }

        private string GetPointerImage()
        {
            var NewsletterData = DataSource;
            Assert.IsNotNull(NewsletterData, "item");
            ReferenceField HospitalDataField = NewsletterData.Fields[FieldIDConstants.HospitalReference];
            var HospitalData = HospitalDataField.TargetItem;
            Assert.IsNotNull(HospitalData, "item");

            Sitecore.Data.Fields.ImageField imageField = HospitalData.Fields["Image Arrows"];
            if (imageField != null && imageField.MediaItem != null)
            {
                Sitecore.Data.Items.MediaItem image = new Sitecore.Data.Items.MediaItem(imageField.MediaItem);
                var imageURL = Sitecore.StringUtil.EnsurePrefix('/', Sitecore.Resources.Media.MediaManager.GetMediaUrl(image));
                return imageURL;
            }
            return "/Ignia/WAHealth/Resources/Images/chevron.png";
        }

        private void BindAgendaRepeater()
        {
            var Links = ((MultilistField)DataSource.Fields[FieldIDConstants.TopicLinks]).GetItems();
            AgendaLinksRepeater.DataSource = Links;
            AgendaLinksRepeater.DataBind();
        }
    }
}