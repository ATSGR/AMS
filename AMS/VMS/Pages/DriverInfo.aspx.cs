using AMS.VMS.BO;
using AMS.VMS.DAL;
using System;
using System.Data;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace AMS.VMS.Pages
{
    public partial class DriverInfo : System.Web.UI.Page
    {
        dalDriverInformation objdalDriverInfo = new dalDriverInformation();
        DataTable dt = new DataTable();
        dalCommonClass objdalCommonClass = new dalCommonClass();
        mySession objSession = new mySession();
        int option = 1;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (objSession.curent.Username != null)
            {
                if (!IsPostBack)
                {
                    option = 1;
                    BindVendorTogrid();
                    BindDepartment();
                }

            }

            else
            {
                Response.Redirect("Login.aspx");

            }



            
        }

        private void refersh()
        {
            txtId.Text = "";
            txtFirstName.Text = "";
            txtLastName.Text = "";
            txtPresentAddress.Text = "";
            txtPermanentaddress.Text = "";
            txtNid.Text = "";
            txtLicenseNo.Text = "";
            txtMobile.Text = "";

            txtrefperson.Text = "";
            txtExpyers.Text = "";
            txtstatus.Text = "";
            BindVendorTogrid();
        }


        private void AccessDriver()
        {

            string DrverId = txtId.Text;
            string FirstName = txtFirstName.Text;
            string LastName = txtLastName.Text;
            string PresentAddress = txtPresentAddress.Text;
            string Permanentaddress = txtPermanentaddress.Text;
            string NID = txtNid.Text;
            string LicenseNo = txtLicenseNo.Text;
            string Depot = ddlDepot.Text;
            string mobile = txtMobile.Text;
            string BloodGrp = ddlBloodgroup.Text;
            string RefPerson = txtrefperson.Text;
            string experience = txtExpyers.Text;
            string remarks = txtstatus.Text;

          
            objdalDriverInfo.Insert_driver_info(option, DrverId, FirstName, LastName, PresentAddress, Permanentaddress, NID, LicenseNo, Depot, mobile, BloodGrp, RefPerson, experience, remarks, "MIS");
        }


        private void BindVendorTogrid()
        {
            //grdDriverr.DataSource = objdalDriverInfo.GetAllDriver(option, "");
            //grdDriverr.DataBind();
        }

        protected void btnSave_Click(object sender, EventArgs e)
        {
            option = 1;
            AccessDriver();
            //btnSave.Enabled = false;

            string message = "Data have been saved successfully.";
            string script = "window.onload = function(){ alert('";
            script += message;
            script += "')};";
            ClientScript.RegisterStartupScript(this.GetType(), "SuccessMessage", script, true);
            BindVendorTogrid();
            refersh();
        }

        protected void grdDriverr_SelectedIndexChanged(object sender, EventArgs e)
        {

        }
        private void BindDepartment()
        {
            dt = objdalCommonClass.GetDepartment();
            ddlDepot.DataSource = dt;
            ddlDepot.DataBind();

            ddlDepot.DataTextField = "DepotName";

            ddlDepot.DataValueField = "DepotName";
            ddlDepot.DataBind();

        }

        protected void grdDriverr_PageIndexChanging(object sender, GridViewPageEventArgs e)
        {
            //grdDriverr.PageIndex = e.NewPageIndex;
            //BindVendorTogrid();
        }

        //protected void btnlink(object sender, EventArgs e)
        //{
        //    int i = 0;
        //    GridViewRow grdrow = (GridViewRow)(sender as Control).Parent.Parent;
        //    int RowIndex = grdrow.RowIndex;
        //    txtId.Text = grdDriverr.Rows[RowIndex].Cells[0].Text;
        //    txtFirstName.Text = grdDriverr.Rows[RowIndex].Cells[2].Text;
        //    txtLastName.Text = grdDriverr.Rows[RowIndex].Cells[3].Text;
        //    txtPresentAddress.Text = grdDriverr.Rows[RowIndex].Cells[4].Text;
        //    txtPermanentaddress.Text = grdDriverr.Rows[RowIndex].Cells[5].Text;
        //    txtNid.Text = grdDriverr.Rows[RowIndex].Cells[6].Text;
        //    txtLicenseNo.Text = grdDriverr.Rows[RowIndex].Cells[7].Text;
        //    ddlDepot.Text = grdDriverr.Rows[RowIndex].Cells[8].Text;
        //    txtMobile.Text = grdDriverr.Rows[RowIndex].Cells[9].Text;
        //    ddlBloodgroup.Text = grdDriverr.Rows[RowIndex].Cells[10].Text;
        //    txtrefperson.Text = grdDriverr.Rows[RowIndex].Cells[11].Text;
        //    txtExpyers.Text = grdDriverr.Rows[RowIndex].Cells[12].Text;
        //    txtstatus.Text = grdDriverr.Rows[RowIndex].Cells[13].Text;
        //    btnUpdate.Enabled = true;
        //}

        protected void btnUpdate_Click(object sender, EventArgs e)
        {
            option = 2;
            AccessDriver();
            refersh();
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            option = 3;
            AccessDriver();
            refersh();
        }



    }
}