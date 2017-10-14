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
    public partial class InsBranch : System.Web.UI.Page
    {
        dalInsuranceBranchInfo objdalInsuranceBranchInfo = new dalInsuranceBranchInfo();
        CommonClass objCommonClass = new CommonClass();
        DataTable dt = new DataTable();
        mySession objSession = new mySession();
        int option = 1;


        protected void Page_Load(object sender, EventArgs e)
        {
            //GetInsurenceCompany();
            //BindMaxCode();

            if (objSession.curent.Username != null)
            {
                if (!IsPostBack)
                {
                    GetInsurenceCompany();
                   
                }

            }

            else
            {
                Response.Redirect("Login.aspx");

            }

            BindMaxCode();

        }

        private void GetInsurenceCompany()
        {
            dt = objdalInsuranceBranchInfo.InsuranceCompany();
            ddlCompanyName.DataSource = dt;
            ddlCompanyName.DataTextField = "CompanyName";
            ddlCompanyName.DataValueField ="CompanyName";         
            ddlCompanyName.DataBind();
        }

        private void BindMaxCode()
        {

            dt = objdalInsuranceBranchInfo.GetMaxCode();
            //objCommonClass.MaxInsuranceCode(txtCode, dt);
            objCommonClass.myfBindMaxValueInFourDigit(txtCode, dt);

        }

        private void Refresh()
        {
            txtBranch.Text = "";
            txtEmail.Text = "";
            txtPhone.Text = "";
            txtAddress.Text = "";
            BindMaxCode();
        }


        protected void btnSave_Click(object sender, EventArgs e)
        {
            option = 1;
            AccessInsuranceBranch();
            Refresh();
            //btnSave.Enabled = false;
            string message = "Data have been saved successfully.";
            string script = "window.onload = function(){ alert('";
            script += message;
            script += "')};";
            ClientScript.RegisterStartupScript(this.GetType(), "SuccessMessage", script, true);         
        }


        private void AccessInsuranceBranch()
        {
            string companyName = ddlCompanyName.SelectedItem.Text.ToString();
            string branch = txtBranch.Text;
            string code = txtCode.Text;
            string phone = txtPhone.Text;
            string email = txtEmail.Text;
            string address = txtAddress.Text;
            string createdBy = "MIS";
            objdalInsuranceBranchInfo.InsertInsuranceBranch(option, companyName, branch, code, phone, email, address, createdBy);
        }



    }
}