<%@ Page Title="" Language="C#" MasterPageFile="~/view/shared/Site1.Master" AutoEventWireup="true" CodeBehind="Checkout.aspx.cs" Inherits="JoesFlowerShop.view.Checkout" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container-fluid border-top border-bottom">
        <h2 class="text-center">Check Out</h2>
        <div class="border-primary border-bottom">
            <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
        </div>
        <div class="container-fluid">
            <div class="border-info border-bottom">
                <h3>Billing Information  </h3>
                <br />
                Name On Card:
                <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox><br />

                Card Number:
                <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox><br />
                Expired Date:
                <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox><br />
                CVV:
                <asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>
            </div>
            <div class="border-info border-bottom border-top">
                <h3>Shipping Infomation</h3>
                <br />
                Full Name:
                <asp:TextBox ID="TextBox5" runat="server"></asp:TextBox><br />
                Address:
                <asp:TextBox ID="TextBox6" runat="server"></asp:TextBox><br />

            </div>
        </div>
        <asp:Button ID="Button1" OnClick="Button1_Click" runat="server" Text="PLACE ORDER" />
    </div>
</asp:Content>
