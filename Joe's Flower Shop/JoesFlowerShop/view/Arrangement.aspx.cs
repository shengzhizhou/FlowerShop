using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace JoesFlowerShop.view
{
    public partial class Arrangement : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        
        protected void Button1_Click(object sender, EventArgs e)
        {
            Session["prodnum"] = prodnum1.Text;
            Session["fname"] = "Flower #1";
            Session["price"] = 20;
            Session["imag"] = "../images/Flower.jpg";
            Response.Redirect("ShoppingCart.aspx");
        }
        protected void cart_Click(object sender, EventArgs e)
        {
            Session["prodnum"] = prodnum2.Text;
            Session["fname"] = "Flower #2";
            Session["price"] = 30;
            Session["imag"] = "../images/Flower2.jpg";
            Response.Redirect("ShoppingCart.aspx");
           
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Session["prodnum"] = prodnum3.Text;
            Session["fname"] = "Flower #3";
            Session["price"] = 40;
            Session["imag"] = "../images/Flower3.jpg";
            Response.Redirect("ShoppingCart.aspx");
        }
    }
}