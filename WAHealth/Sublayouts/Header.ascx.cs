namespace WAHealth.ECM.Ignia.WAHealth.Sublayouts
{
  
  
  using Sitecore.Data;
  using Sitecore.Data.Items;
  using Sitecore.Diagnostics;
  using Sitecore.Web.UI.WebControls;
  using System;
  using WAHealth.Code.Constants;

  public partial class Header : WAHealth.Code.Base.ComponentBase
  { 
    public string BackgroundColour { get; set; }
     
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
      TitleField.Item = DataSource;
      SublineField.Item = DataSource;  
    } 
  }
}