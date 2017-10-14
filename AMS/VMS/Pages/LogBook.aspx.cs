using AMS.Service_References.DAL;
using AMS.VMS.BO;
using System;
using System.Data;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace AMS.VMS.Pages
{
    public partial class LogBook : System.Web.UI.Page
    {
        dalPurchaseInfo objdalPurchaseInfo = new dalPurchaseInfo();
        CommonClass objCommonClass = new CommonClass();
        DataTable dt = new DataTable();
        int option = 1;

        mySession objSession = new mySession();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (objSession.curent.Username != null)
            {
                if (!IsPostBack)
                {
                    BindLogbok();
                    BindVehicles();
                    BindDriver();
                    BindMax();


                }
            }

            else
            {
                Response.Redirect("Login.aspx");

            }



         

        }

        private void BindVehicles()
        {
            dt = objdalPurchaseInfo.GetVehicles();
            ddlVehicle.DataSource = dt;
            ddlVehicle.DataBind();

            ddlVehicle.DataTextField = "VId";

            ddlVehicle.DataValueField = "VId";
            ddlVehicle.DataBind();
        }


        private void BindDriver()
        {
            dt = objdalPurchaseInfo.GetDriver();
            ddlDriver.DataSource = dt;
            ddlDriver.DataBind();

            ddlDriver.DataTextField = "DriverId";

            ddlDriver.DataValueField = "DriverId";
            ddlDriver.DataBind();
        }

        private void BindMax()
        {
            dt = objdalPurchaseInfo.GetMaxIncidentId();
            objCommonClass.myfBindMaxValueInFourDigit(txtId, dt);
        }

        protected void btnSave_Click(object sender, EventArgs e)
        {
            option = 1;
            LogBookInfo();
            //btnSave.Enabled = false;
            string message = "Data have been saved successfully.";
            string script = "window.onload = function(){ alert('";
            script += message;
            script += "')};";
            ClientScript.RegisterStartupScript(this.GetType(), "SuccessMessage", script, true);
            Refresh();

        }

        private void LogBookInfo()
        {

            string Id = txtId.Text;
            string VehicleId = ddlVehicle.Text;
            string SerialNumber = txtSerial.Text;
            string DriverId = ddlDriver.Text;
            string PurcaseDate = txtPurcaseDate.Text;
            string PurchaseTime = txtTime.Text;
            string MeterRading = txtMiterreading.Text;
            string Liter = txtLiter.Text;
            string Amount = txtAmount.Text;
            objdalPurchaseInfo.Insert_New_PurchaseInfo(option, Id, VehicleId, SerialNumber, DriverId, PurcaseDate, PurchaseTime, MeterRading, Liter, Amount, "MIS");
        }



        protected void grdLogBookInfo_PageIndexChanging(object sender, GridViewPageEventArgs e)
        {
            //grdLogBookInfo.PageIndex = e.NewPageIndex;
            //BindAfterIncident();
            grdLogBookInfo.PageIndex = e.NewPageIndex;
            BindLogbok();


        }

        protected void grdLogBookInfo_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        private void BindLogbok()
        {
            grdLogBookInfo.DataSource = objdalPurchaseInfo.GetAllPurchaseInfo(option, "");
            grdLogBookInfo.DataBind();
        }
        protected void btnlink(object sender, EventArgs e)
        {
            int i = 0;
            GridViewRow grdrow = (GridViewRow)(sender as Control).Parent.Parent;
            int RowIndex = grdrow.RowIndex;
            txtId.Text = grdLogBookInfo.Rows[RowIndex].Cells[0].Text;
            ddlVehicle.Text = grdLogBookInfo.Rows[RowIndex].Cells[1].Text;
            txtSerial.Text = grdLogBookInfo.Rows[RowIndex].Cells[2].Text;
            ddlDriver.Text = grdLogBookInfo.Rows[RowIndex].Cells[3].Text;
            txtPurcaseDate.Text = grdLogBookInfo.Rows[RowIndex].Cells[4].Text;
            txtTime.Text = grdLogBookInfo.Rows[RowIndex].Cells[5].Text;
            txtMiterreading.Text = grdLogBookInfo.Rows[RowIndex].Cells[6].Text;
            txtLiter.Text = grdLogBookInfo.Rows[RowIndex].Cells[7].Text;
            txtAmount.Text = grdLogBookInfo.Rows[RowIndex].Cells[8].Text;
            btnSave.Enabled = false;
            btnEdit.Enabled = true;
        }

        protected void btnEdit_Click(object sender, EventArgs e)
        {
            option = 2;
            LogBookInfo();
            option = 1;
            BindLogbok();
            string message = "Data have been Updated successfully.";
            string script = "window.onload = function(){ alert('";
            script += message;
            script += "')};";
            ClientScript.RegisterStartupScript(this.GetType(), "SuccessMessage", script, true);
            Refresh();
        }




        private void Refresh()
        {
            txtId.Text = "";
            ddlVehicle.Items.Clear();
            ddlDriver.Items.Clear();
            txtSerial.Text = "";
            txtPurcaseDate.Text = "";
            txtTime.Text = "";
            txtMiterreading.Text = "";
            txtLiter.Text = "";
        }

        protected void btnDelete_Click(object sender, EventArgs e)
        {
            option = 3;
            LogBookInfo();
            string message = "Data have been Deleted successfully.";
            string script = "window.onload = function(){ alert('";
            script += message;
            script += "')};";
            ClientScript.RegisterStartupScript(this.GetType(), "SuccessMessage", script, true);
            Refresh();
        }



    }
}
