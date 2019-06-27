<%@ Page Title="" Language="C#" MasterPageFile="~/view/shared/Site1.Master" AutoEventWireup="true" CodeBehind="Arrangement.aspx.cs" Inherits="JoesFlowerShop.view.Arrangement" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
   <%-- <script type="text/javascript">

        var indexedDB = window.indexedDB || window.webkitIndexedDB || window.mozIndexedDB || window.msIndexedDB;
        var db;

        if (!window.indexedDB) {
            alert("Your browser doesn't support IndexedDB");
        }

        window.onload = function () {
            initDb();
        }

        function initDb() {
            var request = indexedDB.open("flowershop", 1);
            request.onsuccess = function (event) {
                db = request.result;
                // showAllItems();
            };
            request.onerror = function (event) {
                console.log("IndexedDB error: " + event.target.errorCode);
            };
            request.onupgradeneeded = function (event) {
                var objectStore = event.currentTarget.result.createObjectStore("flower", { keyPath: "id", autoIncrement: true });
                objectStore.createIndex("fname3", "fname3", { unique: false });
                objectStore.createIndex("price3", "price3", { unique: false });
                objectStore.createIndex("prodnum3", "prodnum3", { unique: false });
                objectStore.createIndex("imag3", "imag3", { unique: false });
            };
        }

        function addNewItem() {
            var prodnum3 = document.getElementById("prodnum3").value;


            var transaction = db.transaction(["flower"], "readwrite");
            var objectStore = transaction.objectStore("flower");
            var request = objectStore.add({ fname3: "Flower #3", price3: "40", prodnum3: prodnum3, imag3: "../images/Flower3.jpg" });
            request.onsuccess = function (event) {
                alert("added");
               //window.location.href("ShoppingCart.aspx");
                window.location.href='ShoppingCart.aspx'
            };
            //Response.Redirect("ShoppingCart.aspx");
        }

    </script>--%>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server"  EnableViewState="false" >

    <div class="container-fluid">
        <h2 class="text-center"><asp:Literal ID="Literal1" runat="server" meta:resourcekey="hometitle"></asp:Literal></h2>
   

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
                    <%--<label for="prodnum3">--%>
                Product Number:
            <%--</label>--%>
            <%--<input type="text" id="prodnum3" name="prodnum3"/>--%>
             <asp:TextBox TextMode="Number" ID="prodnum3" runat="server"></asp:TextBox>
            <br /></div>
                 <asp:Button ID="Button3" runat="server" Text="Add to Cart" OnClick="Button2_Click" />
                <%--<input id="Button3" type="button" value="button" onclick="addNewItem()" />--%>

            </div>
        </div>
    </div>
</asp:Content>
