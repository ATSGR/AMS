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
                    option = 1;
                    BindInsuranceCompanyBranchTogrid();
                    GetInsurenceCompany();
                    btnSave.Visible = true;
                    btnUpdate.Visible = false;
                   
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
            BindInsuranceCompanyBranchTogrid();
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




        #region for Gridview for insurance company....

        protected void grdBranchInfo_PageIndexChanged(object source, DataGridPageChangedEventArgs e)
        {
            BindInsuranceCompanyBranchTogrid();

        }


        protected void grdBranchInfo_PageIndexChanging(object sender, GridViewPageEventArgs e)
        {
            grdBranchInfo.PageIndex = e.NewPageIndex;
            BindInsuranceCompanyBranchTogrid();

        }

        protected void grdBranchInfo_SelectedIndexChanged(object sender, EventArgs e)
        {

            GridViewRow selectedRow = grdBranchInfo.SelectedRow;
            txtCode.Text = selectedRow.Cells[0].Text;
            ddlCompanyName.Text = selectedRow.Cells[1].Text;
            txtBranch.Text = selectedRow.Cells[2].Text;
            txtPhone.Text = selectedRow.Cells[3].Text;
            txtEmail.Text = selectedRow.Cells[4].Text;
            txtAddress.Text = selectedRow.Cells[5].Text;
        }

        private void BindInsuranceCompanyBranchTogrid()
        {
            grdBranchInfo.DataSource = objdalInsuranceBranchInfo.GetAllInsuraceCompanyBranch(option, "");
            grdBranchInfo.DataBind();
            
        }


        protected void btnlink(object sender, EventArgs e)
        {
            int i = 0;
            GridViewRow grdrow = (GridViewRow)(sender as Control).Parent.Parent;
           int rowIndex = grdrow.RowIndex;
           ddlCompanyName.Text = grdBranchInfo.Rows[rowIndex].Cells[0].Text;
           txtBranch.Text = grdBranchInfo.Rows[rowIndex].Cells[1].Text;
           txtCode.Text = grdBranchInfo.Rows[rowIndex].Cells[2].Text;
           txtPhone.Text = grdBranchInfo.Rows[rowIndex].Cells[3].Text;
           txtEmail.Text = grdBranchInfo.Rows[rowIndex].Cells[4].Text;
           txtAddress.Text = grdBranchInfo.Rows[rowIndex].Cells[5].Text;
           btnSave.Visible = false;
           btnUpdate.Visible = true;


        }
        #endregion






    }
}