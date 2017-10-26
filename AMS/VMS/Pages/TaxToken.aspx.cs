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
    public partial class TaxToken : System.Web.UI.Page
    {
        dalTaxInformation objDalTaxInformation = new dalTaxInformation();
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
                    BindVehilcesRegNo();
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
            dt = objDalTaxInformation.GetMaxCode();
            objCommonClass.myfBindMaxValueInFourDigit(txtCode, dt);
        }


        public void BindVehilcesRegNo()
        {
            dt = objDalTaxInformation.GetVehiclesRegistrationNumber();
            ddlRegistration.DataSource = dt;
            ddlRegistration.DataTextField = "RegNo";
            ddlRegistration.DataValueField = "RegNo";
            ddlRegistration.DataBind();
        }


        private void SaveTaxInformation()
        {
            string Code = txtCode.Text;
            string RegNo = ddlRegistration.Text;
            string TaxTokenNo =txtTaxTokenNumber.Text;
            string TransacTionNo = txtTransactionNo.Text;
            string ETrackingNo = txtEtrackingNo.Text;
            string BankName = txtIssueBankName.Text;
            string BranchName = txtBranchBoth.Text;
            string TellerName = txtIssueteller.Text;
            string ExpireDate = txtExpdate.Text;
            string IssueDate =txtIssueDate.Text;
            int  NoTyres =Convert.ToInt32( txtNoOfTyre.Text);
            string TyreSize =txtTyreSize.Text;
            string OverHangFont = txtOverHangFront.Text;
            string OverhangBack = txtOverHangBack.Text;
            string Name = txtName.Text;
            string FatherName = txtFather.Text;
            string Address = txtAddress.Text;
            string Tin =txtTin.Text;
            string FromDate = txtFrmDate.Text;
            string ToDate = txtTodate.Text;
            string ApproveDate = txtApprovedDate.Text;
            string VisitDate = txtVisitDate.Text;
            string Visitorname =txtVisitor.Text;
            string Designation = txtDesignation.Text;
            string AreaName = txtArea.Text;
            string RegistrationDate = txtRegDate.Text;
            string CreatedBy = "MIS";
            objDalTaxInformation.InsertvehiclsTaxToken(option, Code, RegNo, TaxTokenNo, TransacTionNo, ETrackingNo, BankName, BranchName, TellerName, ExpireDate, IssueDate, NoTyres, TyreSize, OverHangFont, OverhangBack, Name, FatherName, Address, Tin, FromDate, ToDate, ApproveDate, VisitDate, Visitorname, Designation, AreaName, RegistrationDate, CreatedBy);

        }


        private void RefreshFrom()
        {

            txtAddress.Text = "";
            txtApprovedDate.Text = "";
            txtArea.Text = "";
            txtBranchBoth.Text = "";
            txtDesignation.Text = "";
            txtEtrackingNo.Text = "";
            txtExpdate.Text = "";
            txtFather.Text = "";
            txtFrmDate.Text = "";
            txtIssueBankName.Text = "";
            txtIssueDate.Text = "";
            txtIssueteller.Text = "";
            txtName.Text = "";
            txtNoOfTyre.Text = "";
            txtOverHangBack.Text = "";
            txtOverHangFront.Text = "";
            txtRegDate.Text = "";
            txtTaxTokenNumber.Text = "";
            txtTin.Text = "";
            txtTodate.Text = "";
            txtTransactionNo.Text = "";
            txtTyreSize.Text = "";
            txtVisitDate.Text = "";
            txtVisitor.Text = "";

        }

        protected void btnSave_Click(object sender, EventArgs e)
        {
            option = 1;
            SaveTaxInformation();
            BindMaxCode();
            RefreshFrom();
            string message = "Data have been saved successfully.";
            string script = "window.onload = function(){ alert('";
            script += message;
            script += "')};";
            ClientScript.RegisterStartupScript(this.GetType(), "SuccessMessage", script, true);

        }

    }
}
