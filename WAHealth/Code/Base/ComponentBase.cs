
using Sitecore.Data;
using Sitecore.Data.Items;
using Sitecore.Diagnostics;
using Sitecore.Links;
using Sitecore.Web.UI.WebControls;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using WAHealth.ECM.Ignia.WAHealth.Code.Constants;

namespace WAHealth.ECM.Ignia.WAHealth.Code.Base
{
  public abstract class ComponentBase : System.Web.UI.UserControl
  {
    protected string Warning = "No datasource associated with this component, click here to add a data source";
    protected bool DisplayWarning = false;
    protected Item _dataSource = null; 
     
    public Item DataSource
    {
      get
      {
        if (_dataSource == null)
        {
          if (Parent is Sublayout)
            _dataSource = db.GetItem(((Sitecore.Web.UI.WebControls.Sublayout)Parent).DataSource);
        }
        return _dataSource;
      }
    }
    private Database db
    {
      get { return EmailItemIDConstants.DB; }
    }

    private void Page_Init(object sender, EventArgs e)
    { 
      try
      {
        _dataSource = LoadDataSource();
        if (DataSource == null)
        {
          DisplayWarning = true;
          return;
        }
        
        SetFields(); 
      }
      catch (Exception ex) { }
    }
  
    protected string GetUrl(Item item)
    {
      Sitecore.Links.UrlOptions urlOptions = (Sitecore.Links.UrlOptions)Sitecore.Links.UrlOptions.DefaultOptions.Clone();
      urlOptions.SiteResolving = Sitecore.Configuration.Settings.Rendering.SiteResolving;
      return Sitecore.Links.LinkManager.GetItemUrl(item, urlOptions); 
    }

    protected abstract Item LoadDataSource();
    protected abstract void SetFields();
 
  }
}