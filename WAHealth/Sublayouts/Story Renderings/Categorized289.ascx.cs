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
    public partial class Categorized289 : WAHealth.Code.Base.ComponentBase
    {
        protected override Item LoadDataSource()
        {
            Assert.IsNotNull(DataSource, "item");
            return DataSource;
        }

        protected override void SetFields()
        {
            TitleField.Item = DataSource;
            CategoryField.Item = DataSource;
            ImageField.Item = DataSource;
            DescriptionField.Item = DataSource;
            ButtonTextField.Item = DataSource;
        }
    }
}