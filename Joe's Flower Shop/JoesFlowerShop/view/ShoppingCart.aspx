<%@ Page Title="" Language="C#" MasterPageFile="~/view/shared/Site1.Master" AutoEventWireup="true" CodeBehind="ShoppingCart.aspx.cs" Inherits="JoesFlowerShop.view.ShoppingCart" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container-fluid">
        <h2 class="text-center">Shopping Cart</h2>
        <div class="row border-top border-bottom">
            <div class="col-2"></div>
            <div class="col-sm-4">
                <asp:Image Style="max-width: 100%; height: auto;" ID="Image1" runat="server" />
            </div>
            <div class="col-sm-6">
                <div class="row">
                    <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
                </div>

                <div class="row">
                    <asp:Label ID="Label2" runat="server" Text="Label"></asp:Label>
                </div>
                <div class="row">
                    <asp:Label ID="pnum" runat="server"></asp:Label>
                </div>
                <div class="row">
                    <asp:Button ID="Button1" OnClick="Button1_Click" runat="server" Text="Continue Shopping" /><asp:Button ID="Button2" OnClick="Button2_Click" runat="server" Text="Check Out" />
                </div>
            </div>
        </div>
    </div>


</asp:Content>
