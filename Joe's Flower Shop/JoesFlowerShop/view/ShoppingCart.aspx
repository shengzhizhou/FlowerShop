<%@ Page Title="" Language="C#" MasterPageFile="~/view/shared/Site1.Master" AutoEventWireup="true" CodeBehind="ShoppingCart.aspx.cs" Inherits="JoesFlowerShop.view.ShoppingCart" %>

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
                 showAllItems();
            };

        }
        function showAllItems() {
            var transaction = db.transaction(["flower"], "readwrite");
            var objectStore = transaction.objectStore("flower");
            var request = objectStore.openCursor();
            var num;
            request.onsuccess = function (event) {
                var cursor = event.target.result;
                if (cursor) {
                    //alert("ID: " + cursor.key + " \nPriority: " + cursor.value.fname3 + " \nTo Do Desc: " + cursor.value.price3 + " ");

                    document.getElementById("label5").value = "Product Name: "+cursor.value.fname3;
                    document.getElementById("label6").value = "Product Number: "+cursor.value.prodnum3;
                    cursor.continue();
                }
                else {
                    // no more records
                }
            };
        }
      </script>--%>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container-fluid">
        <h2 class="text-center"><asp:Literal ID="Literal1" runat="server" meta:resourcekey="hometitle"></asp:Literal></h2>
        <div class="row border-top">
            <div class="col-2"></div>
            <div class="col-sm-4">
                <div class="row">
                    <asp:Image Style="max-width: 100%; height: auto;" ID="Image1" runat="server" />
                </div>
                
            </div>
            <div class="col-sm-6">
                <div class="row">
                    <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
                </div>
                <div class="row">
                    <asp:Label ID="Label2" runat="server" Text="Label"></asp:Label>
                </div>
                <div class="row">
                    <%--<asp:Label ID="pnum" runat="server"></asp:Label>--%>
                </div>
                <div class="row">
                    <asp:Button ID="Button1" OnClick="Button1_Click" runat="server" Text="Continue Shopping" /><asp:Button ID="Button2" OnClick="Button2_Click" runat="server" Text="Check Out" />
                </div>
            </div>
        </div>
        <div class="row">
            <div class="col-2"></div>
            <div class="col-sm-4">
                <div class="row">
                    <asp:Image Style="max-width: 100%; height: auto;" ID="Image2" runat="server" />
                </div>
                
            </div>
            <div class="col-sm-6">
                <div class="row">
                    <asp:Label ID="Label3" runat="server" Text="Label"></asp:Label>
                </div>
                <div class="row">
                    <asp:Label ID="Label4" runat="server" Text="Label"></asp:Label>
                </div>
               
                <div class="row">
                    <asp:Button ID="Button3" OnClick="Button1_Click" runat="server" Text="Continue Shopping" /><asp:Button ID="Button4" OnClick="Button2_Click" runat="server" Text="Check Out" />
                </div>
            </div>
        </div>
        <div class="row border-bottom">
            <div class="col-2"></div>
            <div class="col-sm-4">
                <div class="row">
                    <asp:Image Style="max-width: 100%; height: auto;" ID="Image3" runat="server" />

                </div>
            </div>

            <div class="col-sm-6">
                 <div class="row">
                     <%--<input id="label5" type="text" readonly />--%>

                    <asp:Label id="Label5" runat="server"></asp:Label>
                </div>
                <div class="row">
                     <%--<input id="label6" type="text" readonly />--%>
                    <asp:Label id="Label6" runat="server" Text="Label"></asp:Label>
                </div>
                
                <div class="row">
                    <asp:Button ID="Button5" OnClick="Button1_Click" runat="server" Text="Continue Shopping" /><asp:Button ID="Button6" OnClick="Button2_Click" runat="server" Text="Check Out" />
                </div>
            </div>
        </div>
    </div>


</asp:Content>
