<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Seller/SellerMaster.Master" AutoEventWireup="true" CodeBehind="Selling.aspx.cs" Inherits="OnlineBookShop.Views.Seller.Selling" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MyContent" runat="server">
    <div class="row">

    </div>
    <div class="row">
        <div class="col-md-5">
            
            <h3 class="form-label text-success">Book Details</h3>
            <div class="row">
                <div class="col">
                    <div class="mt-3">
                            <label for="" class="form-label text-success">Book Name</label>
                            <input type="text"  placeholder="Book Name"  autocomplete="off" class="form-control" runat="server" id="BNameTb" />
                     </div>
                </div>
                 <div class="col">
                    <div class="mt-3">
                            <label for="" class="form-label text-success">Book Price</label><input type="text" placeholder="Book Price" autocomplete="off" class="form-control" runat="server" id="BPriceTb" />
                     </div>
                </div>
            </div>
            <div class="row">
                <div class="col">
                    <div class="mt-3">
                            <label for="" class="form-label text-success">Quantity</label><input type="text" placeholder="Quantity" autocomplete="off" class="form-control" runat="server" id="BQtyTb" />
                     </div>
                </div>
                 <div class="col">
                    <div class="mt-3">
                            <label for="" class="form-label text-success">Billing Date</label><input type="date"   class="form-control" runat="server" id="DateTb" />
                     </div>
                </div>
            </div>
            <div class="row mt-3">
                <div class="col d-grid">
                    <asp:Button Text="Add To Bill" runat="server" ID="AddToBillBtn" class="btn-warning btn-block btn" OnClick="AddToBillBtn_Click" />

                </div>
            </div>
             <div class="row mt-5">
                 <h3 class="form-label text-success">Book List</h3>
                 <div class="col">
                     <asp:GridView ID="SellingList" runat="server" class="table table-bordered" AutoGenerateSelectButton="True" CellPadding="4" ForeColor="#333333" GridLines="None" OnSelectedIndexChanged="SellingList_SelectedIndexChanged">
                    <AlternatingRowStyle BackColor="White" />
                    <EditRowStyle BackColor="#7C6F57" />
                    <FooterStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
                    <HeaderStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
                    <PagerStyle BackColor="#666666" ForeColor="White" HorizontalAlign="Center" />
                    <RowStyle BackColor="#E3EAEB" />
                    <SelectedRowStyle BackColor="#C5BBAF" Font-Bold="True" ForeColor="#333333" />
                    <SortedAscendingCellStyle BackColor="#F8FAFA" />
                    <SortedAscendingHeaderStyle BackColor="#246B61" />
                    <SortedDescendingCellStyle BackColor="#D4DFE1" />
                    <SortedDescendingHeaderStyle BackColor="#15524A" />
                </asp:GridView>
                 </div>
             </div>   
        </div>
        <div class="col-md-7">
            <h3 class="form-label text-danger">Client's Bill</h3>
                 <div class="col">
                     <asp:GridView ID="BillList" runat="server" class="table table-bordered" CellPadding="4" ForeColor="#333333" GridLines="None" >
                    <AlternatingRowStyle BackColor="White" />
                    <EditRowStyle BackColor="#7C6F57" />
                    <FooterStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
                    <HeaderStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
                    <PagerStyle BackColor="#666666" ForeColor="White" HorizontalAlign="Center" />
                    <RowStyle BackColor="#E3EAEB" />
                    <SelectedRowStyle BackColor="#C5BBAF" Font-Bold="True" ForeColor="#333333" />
                    <SortedAscendingCellStyle BackColor="#F8FAFA" />
                    <SortedAscendingHeaderStyle BackColor="#246B61" />
                    <SortedDescendingCellStyle BackColor="#D4DFE1" />
                    <SortedDescendingHeaderStyle BackColor="#15524A" />
                </asp:GridView>
                     <div class="col d-grid">
                         
                     <asp:Label ID="GrdtotalTb" runat="server" class="text-danger"></asp:Label>
                         <asp:Button Text="Print" runat="server" ID="PrintBtn" class="btn-warning btn-block btn" OnClick="PrintBtn_Click" />
                     </div>
                 </div>
        </div>
    </div>
</asp:Content>
