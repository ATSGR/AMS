using AMS.Service_References.DAL;
using AMS.VMS.BO;
using System;
using System.Data;



namespace AMS.VMS.Pages
{
    public partial class SparePartsReceived : System.Web.UI.Page
    {
        //dalPurchaseInfo objdalPurchaseInfo = new dalPurchaseInfo();


        dalSparepartsReceived objdalSparepartsReceived = new dalSparepartsReceived();
        CommonClass objCommonClass = new CommonClass();
        DataTable dt = new DataTable();
        mySession objSession = new mySession();
        int option = 1;

        protected void Page_Load(object sender, EventArgs e)
        {
            if (objSession.curent.Username != null)
            {
                if (!IsPostBack)
                {
                    BindDepot();
                    Category();
                    ItemName();
                    VendorName();
                    BindMax();
                    //BindReceivedPartsGrid();
                    Registration();
                }

            }

            else
            {
                Response.Redirect("Login.aspx");

            }


           
        }

        private void BindDepot()
        {
            dt = objdalSparepartsReceived.Depot();
            ddlDept.DataSource = dt;
            ddlDept.DataBind();

            ddlDept.DataTextField = "DepotName";
            ddlDept.DataValueField = "DepotName";
            ddlDept.DataBind();
        }


        private void Category()
        {
            dt = objdalSparepartsReceived.Category();
            ddlCategory.DataSource = dt;
            ddlCategory.DataBind();
            ddlCategory.DataTextField = "Category";
            ddlCategory.DataValueField = "Category";
            ddlCategory.DataBind();
        }


        private void Registration()
        {

            dt = objdalSparepartsReceived.Registration();
            ddlRegistration.DataSource = dt;
            ddlRegistration.DataBind();
            ddlRegistration.DataTextField = "RegNo";
            ddlRegistration.DataValueField = "RegNo";
            ddlRegistration.DataBind();
        }


        private void ItemName()
        {
            dt = objdalSparepartsReceived.PartsName(ddlCategory.Text.Trim());
            ddlItemName.DataSource = dt;
            ddlItemName.DataBind();
            ddlItemName.DataTextField = "Name";
            ddlItemName.DataValueField = "Name";
            ddlItemName.DataBind();
        }

        private void VendorName()
        {
            dt = objdalSparepartsReceived.Vendor();
            ddlVendor.DataSource = dt;
            ddlVendor.DataBind();
            ddlVendor.DataTextField = "VendorNm";
            ddlVendor.DataValueField = "VendorNm";
            ddlVendor.DataBind();
        }

        private void BindMax()
        {
            dt = objdalSparepartsReceived.GetMaxSparepartsPurchaseIdId();
            objCommonClass.myfBindMaxValueInFourDigit(txtId, dt);
        }

        protected void txt_TextChanged(object sender, EventArgs e)
        {
            decimal valueOne = string.IsNullOrEmpty(txtUnitPrice.Text) ? 0 : Convert.ToDecimal(txtUnitPrice.Text);
            decimal valueTwo = string.IsNullOrEmpty(txtQuantity.Text) ? 0 : Convert.ToDecimal(txtQuantity.Text);
            txtTotalPrice.Text = (valueOne * valueTwo).ToString("N2");
        }

        protected void btnSave_Click(object sender, EventArgs e)
        {
            option = 1;
            AccessPartsReceived();
            //btnSave.Enabled = false;
            string message = "Data have been saved successfully.";
            string script = "window.onload = function(){ alert('";
            script += message;
            script += "')};";
            ClientScript.RegisterStartupScript(this.GetType(), "SuccessMessage", script, true);
            Refresh();
        }

        protected void ddlCategory_SelectedIndexChanged(object sender, EventArgs e)
        {
            ItemName();
        }


        private void AccessPartsReceived()
        {

            string Id = txtId.Text;
            string vRegno = ddlRegistration.Text.Trim();
            //string Department=ddlDept.Text;
            int indexOfDeptCd = ddlDept.Text.IndexOf('[') + 1;
            string DeptCd = ddlDept.Text.Substring(indexOfDeptCd, 2).ToString();
            string Category = ddlCategory.Text;
            //string ItemName=ddlItemName.Text;

            int indexOfItemName = ddlItemName.Text.IndexOf('[') + 1;
            string ItemName = ddlItemName.Text.Substring(indexOfItemName, 4).ToString();



            string VendorName = ddlVendor.Text;

            int indexOfddlVendor = ddlVendor.Text.IndexOf('[') + 1;
            string vendorCd = ddlVendor.Text.Substring(indexOfddlVendor, 4).ToString();

            string ReceiveDate = txtRecDate.Text;
            string WarrentyPeriod = txtWarrenty.Text;
            string WarrentyEndDate = txtWarrentEndDate.Text;
            int UnitPrice = Convert.ToInt32(txtUnitPrice.Text);
            int RecQuantity = Convert.ToInt32(txtQuantity.Text);
            int TotalPrice = UnitPrice * RecQuantity;
            string UserId = "HR";
            objdalSparepartsReceived.Insert_Spareparts_Received(option, Id, vRegno, DeptCd, Category, ItemName, vendorCd, ReceiveDate, WarrentyPeriod, WarrentyEndDate, UnitPrice, RecQuantity, TotalPrice, UserId);
        }

        private void Refresh()
        {

            //txtId.Text = "";
            //ddlCategory.Items.Clear();
            //ddlDept.Items.Clear();
            //ddlItemName.Items.Clear();
            //ddlVendor.Items.Clear();
            //txtRecDate.Text = "";
            txtQuantity.Text = "";
            txtTotalPrice.Text = "";
            txtWarrenty.Text = "";
            txtWarrentEndDate.Text = "";
            txtUnitPrice.Text = "";
            BindMax();
        }

        //protected void grdSparepartsReceived_PageIndexChanging(object sender, GridViewPageEventArgs e)
        //{
        //    grdSparepartsReceived.PageIndex = e.NewPageIndex;
        //}

        protected void grdSparepartsReceived_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        //private void BindReceivedPartsGrid()
        //{
        //    grdSparepartsReceived.DataSource=objdalSparepartsReceived.GetAllSparepartsReceived(option, "");
        //    grdSparepartsReceived.DataBind();
        //}

        //protected void btnlink(object sender, EventArgs e)
        //{
        //    int i=0;
        //    GridViewRow grdrow=(GridViewRow)(sender as Control).Parent.Parent;
        //    int RowIndex = grdrow.RowIndex;
        //    txtId.Text=grdSparepartsReceived.Rows[RowIndex].Cells[0].Text;
        //    ddlDept.Text=grdSparepartsReceived.Rows[RowIndex].Cells[1].Text;
        //    ddlCategory.Text=grdSparepartsReceived.Rows[RowIndex].Cells[2].Text;
        //    ddlItemName.Text=grdSparepartsReceived.Rows[RowIndex].Cells[3].Text;
        //    ddlVendor.Text=grdSparepartsReceived.Rows[RowIndex].Cells[4].Text;
        //    txtRecDate.Text=grdSparepartsReceived.Rows[RowIndex].Cells[5].Text;
        //    txtWarrenty.Text=grdSparepartsReceived.Rows[RowIndex].Cells[6].Text;
        //    txtWarrentEndDate.Text=grdSparepartsReceived.Rows[RowIndex].Cells[7].Text;
        //    txtUnitPrice.Text=grdSparepartsReceived.Rows[RowIndex].Cells[8].Text;
        //    txtQuantity.Text=grdSparepartsReceived.Rows[RowIndex].Cells[9].Text;
        //    txtTotalPrice.Text=grdSparepartsReceived.Rows[RowIndex].Cells[10].Text;
        //    btnSave.Enabled=false;
        //    btnEdit.Enabled=true;

        //}

        protected void btnEdit_Click(object sender, EventArgs e)
        {
            option = 2;
            AccessPartsReceived();
            option = 1;
            //BindReceivedPartsGrid();
            string message = "Data have been Updated successfully.";
            string script = "window.onload = function(){ alert('";
            script += message;
            script += "')};";
            ClientScript.RegisterStartupScript(this.GetType(), "SuccessMessage", script, true);
            Refresh();
        }

        protected void btnDelete_Click(object sender, EventArgs e)
        {
            option = 3;
            AccessPartsReceived();
            string message = "Data have been Deleted successfully.";
            string script = "window.onload = function(){ alert('";
            script += message;
            script += "')};";
            ClientScript.RegisterStartupScript(this.GetType(), "SuccessMessage", script, true);
            Refresh();
        }

    }

}








//private void AccessAfterincidentInformation()
//        {
//            string AfterincidentId = txtId.Text;
//            string IncidentId = ddlIncident.Text;
//            string RepairStatus = txtRepstatus.Text;
//            string Compensation = txtCompensation.Text;
//            string Cost = txtcost.Text;
//            objdalAftterIncident.Insert_After_Incident(option, AfterincidentId, IncidentId, RepairStatus, Compensation, Cost, "MIS");
//        }ddlIncident.Items.Clear();

//GetAllAfterIncident(option, "");