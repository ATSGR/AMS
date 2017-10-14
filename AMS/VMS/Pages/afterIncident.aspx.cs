using AMS.VMS.BO;
using AMS.VMS.DAL;
using System;
using System.Data;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace AMS.VMS.Pages
{
    public partial class afterIncident : System.Web.UI.Page
    {
        //dlaAfterIncident 
        dalAfterIncident objdalAftterIncident = new dalAfterIncident();
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

                }
            }
            else
            {

                Response.Redirect("Login.aspx");
            }

            BindMax();
            BindAfterIncident();
            BindIncident();

        }

        private void BindIncident()
        {
            dt = objdalAftterIncident.GetIncident();
            ddlIncident.DataSource = dt;
            ddlIncident.DataBind();

            ddlIncident.DataTextField = "IncidntId";
            ddlIncident.DataTextField = "IncidntId";
            ddlIncident.DataBind();
        }


        private void BindMax()
        {
            dt = objdalAftterIncident.GetMaxAfterIncidentId();
            objCommonClass.myfBindMaxValueInFourDigit(txtId, dt);
        }

        protected void btnSave_Click(object sender, EventArgs e)
        {
            option = 1;
            AccessAfterincidentInformation();
            //btnSave.Enabled = false;
            string message = "Data have been saved successfully.";
            string script = "window.onload = function(){ alert('";
            script += message;
            script += "')};";
            ClientScript.RegisterStartupScript(this.GetType(), "SuccessMessage", script, true);
            Refresh();
        }


        private void AccessAfterincidentInformation()
        {
            string AfterincidentId = txtId.Text;
            string IncidentId = ddlIncident.Text;
            string RepairStatus = txtRepstatus.Text;
            string Compensation = txtCompensation.Text;
            string Cost = txtcost.Text;
            objdalAftterIncident.Insert_After_Incident(option, AfterincidentId, IncidentId, RepairStatus, Compensation, Cost, "MIS");
        }

        private void Refresh()
        {
            txtId.Text = "";
            ddlIncident.Items.Clear();
            txtCompensation.Text = "";
            txtcost.Text = "";
            txtRepstatus.Text = "";
            BindMax();

        }

        protected void grdAfterIncident_PageIndexChanging(object sender, GridViewPageEventArgs e)
        {
            //grdAfterIncident.PageIndex = e.NewPageIndex;
            //BindAfterIncident();

        }

        protected void grdAfterIncident_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        private void BindAfterIncident()
        {
            //grdAfterIncident.DataSource = objdalAftterIncident.GetAllAfterIncident(option, "");
            //grdAfterIncident.DataBind();
        }

        //protected void btnlink(object sender, EventArgs e)
        //{
        //    int i = 0;
        //    GridViewRow grdrow = (GridViewRow)(sender as Control).Parent.Parent;
        //    int RowIndex = grdrow.RowIndex;
        //    txtId.Text = grdAfterIncident.Rows[RowIndex].Cells[0].Text;
        //    ddlIncident.Text = grdAfterIncident.Rows[RowIndex].Cells[1].Text;
        //    txtRepstatus.Text = grdAfterIncident.Rows[RowIndex].Cells[2].Text;
        //    txtCompensation.Text = grdAfterIncident.Rows[RowIndex].Cells[3].Text;
        //    txtcost.Text = grdAfterIncident.Rows[RowIndex].Cells[4].Text;
        //    btnSave.Enabled = false;
        //    btnEdit.Enabled = true;

        //}

        protected void btnEdit_Click(object sender, EventArgs e)
        {
            option = 2;
            AccessAfterincidentInformation();
            option = 1;
            BindAfterIncident();
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
            AccessAfterincidentInformation();
            string message = "Data have been Deleted successfully.";
            string script = "window.onload = function(){ alert('";
            script += message;
            script += "')};";
            ClientScript.RegisterStartupScript(this.GetType(), "SuccessMessage", script, true);
            Refresh();
        }
    }
}
