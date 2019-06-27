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
            //if (Request.QueryString["fname"]!=null)
            {
                //Session
                Label1.Text = "Flower Name: " + Session["fname"].ToString();
                int n = Convert.ToInt32(Session["prodnum"].ToString());
                int p = Convert.ToInt32(Session["price"].ToString());
                Label2.Text = "Total Price: " + Session["prodnum"].ToString() + " X " + "$" + Session["price"].ToString() + " = $" + Convert.ToString(p * n) + " ";
                //pnum.Text = Convert.ToString(n * p);
                Image1.ImageUrl = Session["imag"].ToString();

                //queryString
                //Label1.Text = "Flower Name: " + Request.QueryString["fname"];
                //int n = Convert.ToInt32(Request.QueryString["prodnum"]);
                //int p = Convert.ToInt32(Request.QueryString["price"]);
                //Label2.Text = "Total Price: " + Request.QueryString["prodnum"] + " X " + "$" + Request.QueryString["price"] + " = $" + Convert.ToString(p * n) + " ";
                //pnum.Text = Convert.ToString(n * p);
                //Image1.ImageUrl = Request.QueryString["imag"];
            }
            else
            {
                Label1.Visible = false;
                Label2.Visible = false;
                Button1.Visible = false;
                Button2.Visible = false;
            }


            if (Request.Cookies["prod2"]!=null) {
                Label3.Text = "Flower Name: " + Server.HtmlEncode(Request.Cookies["prod2"]["fname2"]);
                int n = Convert.ToInt32(Server.HtmlEncode(Request.Cookies["prod2"]["prodnum2"]));
                int p = Convert.ToInt32(Server.HtmlEncode(Request.Cookies["prod2"]["price2"]));
                Label4.Text = "Total Price: " + Server.HtmlEncode(Request.Cookies["prod2"]["prodnum2"]) + " X " + "$" + Server.HtmlEncode(Request.Cookies["prod2"]["price2"]) + " = $" + Convert.ToString(p * n) + " ";

                Image2.ImageUrl = Server.HtmlEncode(Request.Cookies["prod2"]["imag2"]);
            }
            else
            {
                Label3.Visible = false;
                Label4.Visible = false;
                Button3.Visible = false;
                Button4.Visible = false;
            }

            if (Session["prodnum3"] != null)
            //if (Request.QueryString["fname"]!=null)
            {
                //Session
                Label5.Text = "Flower Name: " + Session["fname3"].ToString();
                int n = Convert.ToInt32(Session["prodnum3"].ToString());
                int p = Convert.ToInt32(Session["price3"].ToString());
                Label6.Text = "Total Price: " + Session["prodnum3"].ToString() + " X " + "$" + Session["price3"].ToString() + " = $" + Convert.ToString(p * n) + " ";
                
                Image3.ImageUrl = Session["imag3"].ToString();
            }
            else
            {
                Label5.Visible = false;
                Label6.Visible = false;
                Button5.Visible = false;
                Button6.Visible = false;
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