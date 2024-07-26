<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Admin/AdminMaster.Master" AutoEventWireup="true" CodeBehind="Author.aspx.cs" Inherits="OnlineBookShop.Views.Admin.Author" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MyContent" runat="server">
    <div class="container-fluid">
        <div class="row">
            <div class="col">
                <h3 class="text-center">Manage Author</h3>
            </div>
        </div>
        <div class="row">
            <div class="col-md-4">
                <div class="mb-3">
                    <label for="" class="form-label text-success">Author Name</label>
                    <input type="text" placeholder="Title" autocomplete="off" class="form-control" runat="server" id="ANameTb" />
                </div>
                <div class="mb-3">
                    <label for="" class="form-label text-success">Author Gender</label>
                    <asp:DropDownList ID="GenCb" runat="server" class="form-control">
                        <asp:ListItem>Male</asp:ListItem>
                        <asp:ListItem>Female</asp:ListItem>
                    </asp:DropDownList>
                </div>
                <div class="mb-3">
                    <label for="" class="form-label text-success">Countries</label>
                    <asp:DropDownList ID="CountryCb" runat="server" class="form-control">
                        <asp:ListItem>USA</asp:ListItem>
                        <asp:ListItem>India</asp:ListItem>
                        <asp:ListItem>France</asp:ListItem>
                        <asp:ListItem>UK</asp:ListItem>
                        <asp:ListItem>SPAIN</asp:ListItem>
                        <asp:ListItem>Other</asp:ListItem>
                    </asp:DropDownList>
                </div>
                <div class="row">
                    <asp:Label ID="ErrMsg" runat="server" class="text-danger"></asp:Label>
                    <div class="col d-grid">
                        <asp:Button Text="Update" runat="server" ID="EditBtn" class="btn-warning btn-block btn" /></div>
                    <div class="col d-grid">
                        <asp:Button Text="Save" runat="server" ID="SaveBtn" class="btn-success btn-block btn" OnClick="SaveBtn_Click" /></div>
                    <div class="col d-grid">
                        <asp:Button Text="Delete" runat="server" ID="DeleteBtn" class="btn-danger btn-block btn" /></div>
                </div>
            </div>
            <div class="col-md-8">
                <asp:GridView ID="AuthorsList" runat="server"></asp:GridView>
            </div>
        </div>
    </div>
</asp:Content>
