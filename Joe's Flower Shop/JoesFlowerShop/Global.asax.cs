using System;
using System.Collections.Generic;
using System.Globalization;
using System.Linq;
using System.Threading;
using System.Web;
using System.Web.Security;
using System.Web.SessionState;

namespace JoesFlowerShop
{
    public class Global : System.Web.HttpApplication
    {
        protected void Application_Start(object sender, EventArgs e)
        {
        }
        void Application_AcquireRequestState(object sender, EventArgs e)
        {
            HttpContext context = HttpContext.Current;
            if (context.Session["language"] != null)
            {
                Thread.CurrentThread.CurrentUICulture = new CultureInfo(context.Session["language"].ToString().Trim());
                Thread.CurrentThread.CurrentCulture = new CultureInfo(context.Session["language"].ToString().Trim());
            }
        }
    }
}