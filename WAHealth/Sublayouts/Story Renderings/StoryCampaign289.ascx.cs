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

    public partial class StoryCampaign289 : WAHealth.Code.Base.ComponentBase
    {
        protected override Item LoadDataSource()
        {
            Assert.IsNotNull(DataSource, "item");
            return DataSource;
        }

        protected override void SetFields()
        {
            CampaignPanelRepeater.ItemDataBound += CampaignPanelRepeaterOnItemDataBound;
            BindAgendaRepeater();
        }

        private void CampaignPanelRepeaterOnItemDataBound(object sender, RepeaterItemEventArgs e)
        {
            if (e.Item.ItemType == ListItemType.Item || e.Item.ItemType == ListItemType.AlternatingItem)
            {
                var myItem = e.Item.DataItem as Item;
                if (myItem != null)
                {
                    var PromoImageField = e.Item.FindControl("PromoImageField") as System.Web.UI.WebControls.Image;
                    if (PromoImageField != null)
                    {
                        Sitecore.Data.Fields.ImageField imgField = ((Sitecore.Data.Fields.ImageField)myItem.Fields["Newsletter Image"]);

                        PromoImageField.ImageUrl = Sitecore.Resources.Media.MediaManager.GetMediaUrl(imgField.MediaItem);
                        PromoImageField.AlternateText = imgField.Alt;
                    }

                }
            }
        }

        private void BindAgendaRepeater()
        {
            var CampaignPanel = ((MultilistField)DataSource.Fields[FieldIDConstants.CampaignPanels]).GetItems();
            CampaignPanelRepeater.DataSource = CampaignPanel;
            CampaignPanelRepeater.DataBind();
        }
    }
}