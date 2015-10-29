namespace WAHealth.ECM.Ignia.WAHealth.Sublayouts
{


  using Sitecore.Data;
  using Sitecore.Data.Fields;
  using Sitecore.Data.Items;
  using Sitecore.Diagnostics;
  using Sitecore.Web.UI.WebControls;
  using System;
  using WAHealth.Code.Constants;
  /*Requires additional code change to properly get hospital data*/
  public partial class HospitalHeader : WAHealth.Code.Base.ComponentBase
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
      TitleField.Item = DataSource;
      SublineField.Item = DataSource;

      var HeaderItem = Sitecore.Context.Item.Children.InnerChildren.Find(x => x.TemplateID == EmailItemIDConstants.HeaderTemplate);

      ImageField.Item = DataSource;
    } 

    private void GetHospitalLogo()
    { 
      //Get newsletter data item
      var NewsletterData = Sitecore.Context.Item.Children.InnerChildren.Find(x => x.TemplateID == EmailItemIDConstants.NewsletterData);
      Assert.IsNotNull(NewsletterData, "item");
      //Get Hospital data item
      ReferenceField HospitalDataField = NewsletterData.Fields[FieldIDConstants.HospitalReference];
      var HospitalData = HospitalDataField.TargetItem;
      Assert.IsNotNull(HospitalData, "item");
      //Set logo
      ImageField.Item = HospitalData; 
    }
  }
}