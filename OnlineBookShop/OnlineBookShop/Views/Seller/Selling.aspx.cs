using System;
using System.Collections.Generic;
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
            }
        }
        private void ShowBooks()
        {
            string Query = "Select * from BookTbl";
            SellingList.DataSource = Con.GetData(Query);
            SellingList.DataBind();
        }

        protected void SellingList_SelectedIndexChanged(object sender, EventArgs e)
        {

        }
    }
}