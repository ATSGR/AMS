using AMS.VMS.BO;
using AMS.VMS.DAL;
using System;
using System.Data;
using System.Web.UI;
using System.Web.UI.WebControls;


namespace AMS.VMS.Pages
{
    public partial class spareparts : System.Web.UI.Page
    {
        dalSparePartsInfo objdalsparepartsinfo = new dalSparePartsInfo();
        CommonClass objCommonClass = new CommonClass();
        dalCommonClass objdalcommonclass = new dalCommonClass();
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
                    BindSparepartsTogrid();
                    BindCategory();
                }
            }

            else
            {
                Response.Redirect("Login.aspx");

            }


            
            btnUpdate.Enabled = false;
            BindMax();
        }

        //private void BindMax()
        //{
        //    dt = objdalVehicleInformation.GetMaxVehicleId();
        //    objCommonClass.myfBindMaxValueInFourDigit(txtVehicleID, dt);
        //}

        private void BindMax()
        {
            dt = objdalsparepartsinfo.GetMaxSparepartsId();
            objCommonClass.myfBindMaxValueInFourDigit(txtId, dt);

        }
        private void refersh()
        {
            txtId.Text = "";
            txtName.Text = "";
            dropdownCatagory.Items.Clear();
            BindSparepartsTogrid();
            BindMax();
        }

        //private void BindDepartment()
        //{
        //    dt = objdalCommonClass.GetDepartment();
        //    ddlDepot.DataSource = dt;
        //    ddlDepot.DataBind();

        //    ddlDepot.DataTextField = "DepotName";

        //    ddlDepot.DataValueField = "DepotName";
        //    ddlDepot.DataBind();

        //}

        private void BindCategory()
        {
            dt = objdalcommonclass.GetCategory();
            dropdownCatagory.DataSource = dt;
            dropdownCatagory.DataBind();
            dropdownCatagory.DataTextField = "Name";
            dropdownCatagory.DataValueField = "Name";
            dropdownCatagory.DataBind();
        }

        protected void btnSave_Click(object sender, EventArgs e)
        {
            option = 1;
            AccessSpareparts();
            //btnSave.Enabled = false;
            string message = "Data have been saved successfully.";
            string script = "window.onload = function(){ alert('";
            script += message;
            script += "')};";
            ClientScript.RegisterStartupScript(this.GetType(), "SuccessMessage", script, true);
            refersh();
        }

        private void AccessSpareparts()
        {
            string id = txtId.Text;
            string Name = txtName.Text;
            string Category = dropdownCatagory.Text;
            objdalsparepartsinfo.Insert_spreparts_info(option, id, Name, Category, "MIS");
        }

        private void BindSparepartsTogrid()
        {
            grdSpareparts.DataSource = objdalsparepartsinfo.GetAllspareparts(option, "");
            grdSpareparts.DataBind();
        }


        protected void grdSpareparts_PageIndexChanging(object sender, GridViewPageEventArgs e)
        {

            //grdVendor.PageIndex = e.NewPageIndex;
            //BindVendorTogrid();
            grdSpareparts.PageIndex = e.NewPageIndex;
            BindSparepartsTogrid();

        }

        protected void grdSpareparts_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void btnlink(object sender, EventArgs e)
        {
            int i = 0;
            GridViewRow grdrow = (GridViewRow)(sender as Control).Parent.Parent;
            int RowIndex = grdrow.RowIndex;
            //txtId.Text = grdSpareparts.Rows[RowIndex].Cells[0].Text;
            //dropdownCatagory.Text = grdSpareparts.Rows[RowIndex].Cells[1].Text;
            //btnUpdate.Enabled = true;
            txtId.Text = grdSpareparts.Rows[RowIndex].Cells[0].Text;
            dropdownCatagory.Text = grdSpareparts.Rows[RowIndex].Cells[1].Text;
            txtName.Text = grdSpareparts.Rows[RowIndex].Cells[2].Text;

            btnUpdate.Enabled = true;
        }

        protected void btnClear_Click(object sender, EventArgs e)
        {
            CleartextBoxes(this);
            btnSave.Enabled = true;
        }

        //this is the function for clear
        public void CleartextBoxes(Control parent)
        {

            foreach (Control x in parent.Controls)
            {
                if ((x.GetType() == typeof(TextBox)))
                {

                    ((TextBox)(x)).Text = "";

                }

                if (x.HasControls())
                {
                    CleartextBoxes(x);
                }
            }
        }

        protected void btnUpdate_Click(object sender, EventArgs e)
        {
            option = 2;
            AccessSpareparts();
            option = 1;
            BindSparepartsTogrid();
            string message = "Data have been Updated successfully.";
            string script = "window.onload = function(){ alert('";
            script += message;
            script += "')};";
            ClientScript.RegisterStartupScript(this.GetType(), "SuccessMessage", script, true);
            refersh();
        }


        //end function for clear...



    }
}




