using AMS.DAL;
using AMS.VMS.BO;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace AMS.VMS.Pages
{
    public partial class Fitness : System.Web.UI.Page
    {
        dalvehiclesFitnessInformation objdalvehiclesFitnessInformation = new dalvehiclesFitnessInformation();
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
                    option = 1;
                    GetVehiclesRegNumber();
                }
            }

            else
            {
                Response.Redirect("Login.aspx");
            }

            BindMaxCode();
        }

        private void BindMaxCode()
        {
            dt = objdalvehiclesFitnessInformation.GetMaxCode();
            objCommonClass.myfBindMaxValueInFourDigit(txtCode, dt);
        }

        private void GetVehiclesRegNumber()
        {

            dt = objdalvehiclesFitnessInformation.GetVehiclesRegistrationNumber();
            ddlRegistration.DataSource = dt;
            ddlRegistration.DataTextField = "RegNo";
            ddlRegistration.DataValueField = "RegNo";
            ddlRegistration.DataBind();
        }


        private void AccessFitnessInformation()
        {

            string Code = txtCode.Text;
            string RegNo = ddlRegistration.Text.Trim();
            string ChesisNo = txtChesisNumber.Text;
            string EngineNo = txtEngineNo.Text;
            string Description = txtDesignation.Text;
            int Nofseats = Convert.ToInt32(txtSeat.Text);
            string Cylinder = txtCylinder.Text;
            string CC = txtCC.Text;
            string WeightEmpty = txtWeight.Text;
            string WeightLoad = txtLoadWeght.Text;
            int NumTyres = Convert.ToInt32(txtNoOfTyre.Text);
            string TyreSize = txtTyreSize.Text;
            string OverhangFont = txtOverHangFront.Text;
            string OverhangBack = txtOverHangBack.Text;
            string Name = txtName.Text;
            string FatherName = txtFather.Text;
            string Address = txtAddress.Text;
            string Tin = txtTin.Text;
            string FromDate = txtFrmDate.Text;
            string ToDate = txtTodate.Text;
            string ApproveDate = txtApprovedDate.Text;
            string VisitDate = txtVisitDate.Text;
            string Visitorname = txtVisitor.Text;
            string Designation = txtDesignation.Text;
            string AreaName = txtArea.Text;
            string Certificatename = txtCertifivateNo.Text;
            string createdBy = "MIS";

            objdalvehiclesFitnessInformation.InsertVehiclesFitnessInformation(option, Code, RegNo, ChesisNo, EngineNo, Description, Nofseats, Cylinder, CC, WeightEmpty, WeightLoad, NumTyres, TyreSize, OverhangFont, OverhangBack, Name, FatherName, Address, Tin, FromDate, ToDate, ApproveDate, VisitDate, Visitorname, Designation, AreaName, Certificatename, createdBy);
        }

        private void RefreshForm()
        {

            txtAddress.Text = "";
            txtApprovedDate.Text = "";
            txtArea.Text = "";
            txtCC.Text = "";
            txtCertifivateNo.Text = "";
            txtChesisNumber.Text = "";
            txtCylinder.Text = "";
            txtDesignation.Text = "";
            txtEngineNo.Text = "";
            txtFather.Text = "";
            txtFrmDate.Text = "";
            txtLoadWeght.Text = "";
            txtName.Text = "";
            txtNoOfTyre.Text = "";
            txtOverHangBack.Text = "";
            txtOverHangFront.Text = "";
            txtSeat.Text = "";
            txtTin.Text = "";
            txtTodate.Text = "";
            txtTyreSize.Text = "";
            txtvehicleDescription.Text = "";
            txtVisitDate.Text = "";
            txtVisitor.Text = "";
            txtWeight.Text = "";
        }


        protected void btnSave_Click(object sender, EventArgs e)
        {
            option = 1;
            AccessFitnessInformation();
            BindMaxCode();
            RefreshForm();
            string message = "Data have been saved successfully.";
            string script = "window.onload = function(){ alert('";
            script += message;
            script += "')};";
            ClientScript.RegisterStartupScript(this.GetType(), "SuccessMessage", script, true);
        }
    }
}
