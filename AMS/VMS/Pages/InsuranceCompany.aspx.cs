using AMS.DAL;
using AMS.VMS.BO;
using AMS.VMS.DAL;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;


namespace AMS.VMS.Pages
{
    public partial class InsuranceCompany : System.Web.UI.Page
    {
        //dlaAfterIncident 
        dalInsurenceCompany objdalInsurenceCompany = new dalInsurenceCompany();
        CommonClass objCommonClass = new CommonClass();
        mySession objSession = new mySession();
        DataTable dt = new DataTable();
        int option = 1;


        protected void Page_Load(object sender, EventArgs e)
        {

            if (objSession.curent.Username != null)
            {
                if (!IsPostBack)
                {
                    option = 1;
                    BindInsuranceCompanyTogrid();
                   
                    
                }
            }
            else
            {
                Response.Redirect("Login.aspx");
            }
            //binding for max value...
            BindMaxCode();
            //BindInsuranceCompanyTogrid();
            btnUpdate.Visible = false;         
        }

        private void BindMaxCode()
        {
            dt = objdalInsurenceCompany.GetMaxCode();
            objCommonClass.MaxInsuranceCode(txtCode, dt);

        }

        protected void btnSave_Click(object sender, EventArgs e)
        {
            option = 1;
            AccressCompany();
            string message = "Data have been saved successfully.";
            string script = "window.onload = function(){ alert('";
            script += message;
            script += "')};";
            ClientScript.RegisterStartupScript(this.GetType(), "SuccessMessage", script, true);

            BindMaxCode();
            Refresh();
        }


        private void AccressCompany()
        {
            string Code = txtCode.Text;
            string Name = txtCompanyName.Text;
            string Remarks = txtRemarks.Text;
            objdalInsurenceCompany.InsertInsuranceInfo(option, Code, Name, Remarks, "Nasir");
        }
        private void Refresh()
        {
            txtCompanyName.Text = "";
            txtRemarks.Text = "";
            BindMaxCode();
        }



        #region for Gridview for insurance company....

        protected void grdInsuranceCompany_PageIndexChanged(object source, DataGridPageChangedEventArgs e)
        {
            BindInsuranceCompanyTogrid();
        }


        protected void grdInsuranceCompany_PageIndexChanging(object sender, GridViewPageEventArgs e)
        {

            grdInsuranceCompany.PageIndex = e.NewPageIndex;
            BindInsuranceCompanyTogrid();

        }

        protected void grdInsuranceCompany_SelectedIndexChanged(object sender, EventArgs e)
        {

            GridViewRow selecteedRow = grdInsuranceCompany.SelectedRow;
            txtCode.Text = selecteedRow.Cells[1].Text;
            txtCompanyName.Text = selecteedRow.Cells[2].Text;
            txtRemarks.Text = selecteedRow.Cells[3].Text;
        }

        private void BindInsuranceCompanyTogrid()
        {

            grdInsuranceCompany.DataSource = objdalInsurenceCompany.GetAllInsuraceCompany(option,  "");
            grdInsuranceCompany.DataBind();
        }


        protected void btnlink(object sender, EventArgs e)
        {
            //txtId.Text = grdVendor.Rows[RowIndex].Cells[0].Text;          
            //btnUpdate.Enabled = true;

         
            int i = 0;
            GridViewRow grdrow = (GridViewRow)(sender as Control).Parent.Parent;
            int RowIndex = grdrow.RowIndex;
            txtCode.Text = grdInsuranceCompany.Rows[RowIndex].Cells[0].Text;
            txtCompanyName.Text = grdInsuranceCompany.Rows[RowIndex].Cells[1].Text;
            txtRemarks.Text = grdInsuranceCompany.Rows[RowIndex].Cells[2].Text;
            btnSave.Visible = false;
            btnUpdate.Visible = true;
            
        }
    #endregion


        protected void btnUpdate_Click(object sender, EventArgs e)
        {

            option = 2;
            AccressCompany();
            option = 1;
            BindInsuranceCompanyTogrid();            
            string message = "Data have been Updated successfully.";
            string script = "window.onload = function(){ alert('";
            script += message;
            script += "')};";
            ClientScript.RegisterStartupScript(this.GetType(), "SuccessMessage", script, true);

        }  
    }
}
