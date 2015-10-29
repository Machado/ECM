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
  using WAHealth.Code.Base;
  public partial class StoryTwoColumn290 : ComponentBase
  {
    private Table SpacingTable { get; set; }

    protected override Item LoadDataSource() 
    {
        Assert.IsNotNull(DataSource, "item");
        return DataSource; 
    }

    public string GetAlignment(int i)
    {
      return (i == 0) ? "Left" : "Right"; 
    }

    protected override void SetFields()
    {
      BindAgendaRepeater();
      InsertSpacer();
    }

    private void InsertSpacer()
    {

    }

    private void BindAgendaRepeater()
    {
      var StoryColumns = ((MultilistField)DataSource.Fields[FieldIDConstants.StoryColumns]).GetItems();
      CampaignPanelRepeater.DataSource = StoryColumns;
      CampaignPanelRepeater.DataBind();
    }
  }
}