namespace WAHealth.ECM.Ignia.WAHealth.Sublayouts
{
  
  
  using Sitecore.Data;
  using Sitecore.Data.Items;
  using Sitecore.Diagnostics;
  using Sitecore.Web.UI.WebControls;
  using System;
  using WAHealth.Code.Constants;

  public partial class HeaderHealthyWA : WAHealth.Code.Base.ComponentBase
  { 
    public string BackgroundColour { get; set; }
    protected string HealthyLiving { get; set; }
    protected string HealthConditions { get; set; }
    protected string TreatmentsAndTests { get; set; }
    protected string SafetyAndFirstAid { get; set; }

    protected override Item LoadDataSource()
    {
      var HeaderItem = Sitecore.Context.Item.Children.InnerChildren.Find(x => x.TemplateID == EmailItemIDConstants.HeaderTemplate);
      Assert.IsNotNull(HeaderItem, "item");
      return HeaderItem; 
    }
    protected override void SetFields()
    {
      BackgroundColour = DataSource[FieldIDConstants.HeaderBackgroundColour];
      ImageField.Item = DataSource;
      HealthyLiving = GetUrl(GetItem(EmailItemIDConstants.HealthyLiving));
      HealthConditions = GetUrl(GetItem(EmailItemIDConstants.HealthConditions));
      TreatmentsAndTests = GetUrl(GetItem(EmailItemIDConstants.TreatmentsAndTests));
      SafetyAndFirstAid = GetUrl(GetItem(EmailItemIDConstants.SafetyAndFirstAid));
    }

    private Item GetItem(ID id)
    {
      Assert.IsNotNull(id, "id");
      return EmailItemIDConstants.DB.GetItem(id);
    }
     
  }
}