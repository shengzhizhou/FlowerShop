<%@ Page Title="" Language="C#" MasterPageFile="~/view/shared/Site1.Master" AutoEventWireup="true" CodeBehind="Arrangement.aspx.cs" Inherits="JoesFlowerShop.view.Arrangement" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div class="container-fluid">
        <h2 class="text-center">Arrangement</h2>
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="false">
            <Columns></Columns>
        </asp:GridView>


        <div class="row border-top border-bottom">
            <div class="col-sm-6">
                <img class="rounded img-fluid" src="../images/Flower.jpg" />
            </div>
            <div class="col-sm-6">
                <div class="row">
                    Flower #1
                </div>
                <div class="row">
                    Product Price: $20
                </div>
                <div class="row">
                    Product Number:
                    <asp:TextBox TextMode="Number" ID="prodnum1" runat="server"></asp:TextBox>
                </div>
                <asp:Button ID="Button1" runat="server" Text="Add to Cart" OnClick="Button1_Click" />

            </div>
        </div>
        <div class="row border-top border-bottom">
            <div class="col-sm-6">
                <img class="rounded img-fluid" src="../images/flower2.jpg" />
            </div>
            <div class="col-sm-6">
                <div class="row">
                    Flower #2
                </div>
                <div class="row">
                    Product Price: $30
                </div>
                <div class="row">
                    Product Number:<asp:TextBox TextMode="Number" ID="prodnum2" runat="server"></asp:TextBox>
                </div>
                <asp:Button ID="cart" runat="server" Text="Add to Cart" OnClick="cart_Click" />

            </div>
        </div>
        <div class="row border-top border-bottom">
            <div class="col-sm-6">
                <img class="rounded img-fluid" src="../images/flower3.jpg" />
            </div>
            <div class="col-sm-6">
                <div class="row">
                    Flower #3
                </div>
                <div class="row">
                    Product Price: $40
                </div>
                <div class="row">
                    Product Number:<asp:TextBox TextMode="Number" ID="prodnum3" runat="server"></asp:TextBox>
                </div>
                <asp:Button ID="Button2" runat="server" Text="Add to Cart" OnClick="Button2_Click" />

            </div>
        </div>
    </div>
</asp:Content>
