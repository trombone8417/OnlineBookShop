using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace OnlineBookShop.Views.Seller
{
    public partial class Selling : System.Web.UI.Page
    {
        Models.Functions Con;
        protected void Page_Load(object sender, EventArgs e)
        {
            Con = new Models.Functions();
            if (!IsPostBack)
            {
                ShowBooks();
                DataTable dt = new DataTable();
                dt.Columns.AddRange(new DataColumn[5]{
                    new DataColumn("ID"),
                    new DataColumn("Book"),
                    new DataColumn("Price"),
                    new DataColumn("Quantity"),
                    new DataColumn("Total")
                });
                ViewState["Bill"] = dt;
                this.BindGrid();
            }
        }

        protected void BindGrid()
        {
            BillList.DataSource = ViewState["Bill"];
            BillList.DataBind();
        }

        private void ShowBooks()
        {
            string Query = "Select BId as Code, BName as Name, BQty as Stock, BPrice as Price from BookTbl";
            SellingList.DataSource = Con.GetData(Query);
            SellingList.DataBind();
        }

        int Key = 0;
        int Stock = 0;
        protected void SellingList_SelectedIndexChanged(object sender, EventArgs e)
        {
            
            BNameTb.Value = SellingList.SelectedRow.Cells[2].Text;
            Stock = Convert.ToInt32(SellingList.SelectedRow.Cells[3].Text);
            BPriceTb.Value = SellingList.SelectedRow.Cells[4].Text;
            if (BNameTb.Value == "")
            {
                Key = 0;
            }
            else
            {
                Key = Convert.ToInt32(SellingList.SelectedRow.Cells[1].Text);
            }
          
            
        }

        protected void BillList_SelectedIndexChanged(object sender, EventArgs e)
        {

        }
        int Grdtotal = 0;
        int Amount;
        protected void AddToBillBtn_Click(object sender, EventArgs e)
        {
            if (BQtyTb.Value == "" || BPriceTb.Value == "" || BNameTb.Value == "")
            {

            }
            else
            {
                int total = Convert.ToInt32(BQtyTb.Value) * Convert.ToInt32(BPriceTb.Value);
                DataTable dt = (DataTable)ViewState["Bill"];
                dt.Rows.Add(BillList.Rows.Count + 1,
                    BNameTb.Value.Trim(),
                    BPriceTb.Value.Trim(),
                    BQtyTb.Value.Trim(),
                    total);
                ViewState["Bill"] = dt;
                this.BindGrid();

                
                for (int i = 0; i<BillList.Rows.Count-1; i++)
                {
                    Grdtotal = Grdtotal + Convert.ToInt32(BillList.Rows[i].Cells[5].Text);
                }
                Amount = Grdtotal;
                GrdtotalTb.Text = "Rs" + Grdtotal;
                BNameTb.Value = "";
                BPriceTb.Value = "";
                BQtyTb.Value = "";
                Grdtotal = 0;
            }
        }
    }
}