using System;
using System.Globalization;
using System.Linq;
using System.Threading;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace JoesFlowerShop.view.shared
{
    public partial class Site1 : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["language"] != null && !IsPostBack)
            {
                DropDownList_Language.ClearSelection();
                DropDownList_Language.Items.FindByValue(Session["language"].ToString()).Selected = true;

            }

        }
        protected void DropDownList_Language_SelectedIndexChanged(object sender, EventArgs e)
        {
            switch (DropDownList_Language.SelectedValue)
            {
                case "en":
                    this.SetMyNewCulture("en");
                    break;
                case "zh-CN":
                    this.SetMyNewCulture("zh-CN");
                    break;
                default:
                    break;
            }
            Response.Redirect(Request.Path);
        }

        private void SetMyNewCulture(string culture)
        {
            Session["language"] = culture;
        }
    }
}