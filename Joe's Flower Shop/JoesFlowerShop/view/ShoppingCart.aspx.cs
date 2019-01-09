using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace JoesFlowerShop.view
{
    public partial class ShoppingCart : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["prodnum"] != null)
            {
                Label1.Text = "Flower Name: "+Session["fname"].ToString();
                int n = Convert.ToInt32(Session["prodnum"].ToString());
                int p = Convert.ToInt32(Session["price"].ToString());
                Label2.Text = "Total Price: " + Session["prodnum"].ToString() + " X " + "$" + Session["price"].ToString() + " = $" + Convert.ToString(p * n) + " ";

                //pnum.Text = Session["prodnum"].ToString() + "\n" + Session["fname"].ToString();
                Image1.ImageUrl = Session["imag"].ToString();

            }
            else {
                Label1.Visible = false;
                Label2.Visible = false;
                Button2.Visible = false;
            }
                
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Response.Redirect("Arrangement.aspx");
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Response.Redirect("Checkout.aspx");
        }
    }
}