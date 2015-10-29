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
  public partial class Story1200x600 : WAHealth.Code.Base.ComponentBase
  {
    protected override Item LoadDataSource() { return DataSource; }

    protected override void SetFields()
    {
      TitleField.Item = DataSource;
      ImageField.Item = DataSource; 
      DescriptionField.Item = DataSource;
      ButtonTextField.Item = DataSource;
    } 
  }
}