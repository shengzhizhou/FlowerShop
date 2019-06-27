<%@ Page Title="" Language="C#" MasterPageFile="~/view/shared/Site1.Master" AutoEventWireup="true" CodeBehind="home.aspx.cs" Inherits="JoesFlowerShop.view.WebForm1"%>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    
    <h2 id="hm" class="text-center"><asp:Literal ID="Literal1" runat="server" meta:resourcekey="hometitle"></asp:Literal></h2>
    <p><asp:Literal ID="Literal2" runat="server" meta:resourcekey="content"></asp:Literal></p>
<img class="rounded img-fluid rounded-circle w-50 mx-auto d-block" src="../images/Flower.jpg" />
       
</asp:Content>
