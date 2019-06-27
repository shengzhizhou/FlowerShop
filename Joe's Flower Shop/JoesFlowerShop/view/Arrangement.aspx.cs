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
            // Seesion Way
            Session["prodnum"] = prodnum1.Text;
            Session["fname"] = "Flower #1";
            Session["price"] = 20;
            Session["imag"] = "../images/Flower.jpg";
            Response.Redirect("ShoppingCart.aspx");

            //queryString
            // Response.Redirect("ShoppingCart.aspx?fname=" + "Flower Rose Bunch 1" + "&prodnum=" + prodnum1.Text+ "&price=20&imag=../images/Flower.jpg");
        }
        protected void cart_Click(object sender, EventArgs e)
        {
            //Session Way
            //Session["prodnum2"] = prodnum2.Text;
            //Session["fname2"] = "Flower #2";
            //Session["price2"] = 30;
            //Session["imag2"] = "../images/Flower2.jpg";
            //Response.Redirect("ShoppingCart.aspx");

            HttpCookie prod2 = new HttpCookie("prod2");
            prod2.Values["prodnum2"] = prodnum2.Text;
            prod2.Values["fname2"] = "Flower #2";
            prod2.Values["price2"] = "30";
            prod2.Values["imag2"]= "../images/Flower2.jpg";
            Response.Cookies.Add(prod2);
            Response.Redirect("ShoppingCart.aspx");

        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Session["prodnum3"] = prodnum3.Text;
            Session["fname3"] ="Flower #3";
            Session["price3"] = 40;
            Session["imag3"] = "../images/Flower3.jpg";


            Response.Redirect("ShoppingCart.aspx");



        }
    }
}