using AMS.VMS.DAL;
using System;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Web.Services.Description;
using AMS.VMS.BO;

namespace AMS.VMS.Pages
{
    public partial class vendorInfo : System.Web.UI.Page
    {
        dalVendorInfo objdalVendorInfo = new dalVendorInfo();
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
                    BindVendorTogrid();

                }

            }

            else
            {
                Response.Redirect("Login.aspx");
                
            }
//Is post back use for not reload or redirect page after click on buttons...
          
            btnUpdate.Enabled = false;
            BindMax();
        }
        private void BindMax()
        {

            dt = objdalVendorInfo.GetMaxVendorId();
            objCommonClass.myfBindMaxValueInFourDigit(txtId, dt);
        }


        protected void btnSave_Click(object sender, EventArgs e)
        {
            option=1;
            AccessVendor();
            string message = "Data have been saved successfully.";
            string script = "window.onload = function(){ alert('";
            script += message;
            script += "')};";
            ClientScript.RegisterStartupScript(this.GetType(), "SuccessMessage", script, true);
            Refresh();
        }

       private void AccessVendor()
        {
            string vendorid = txtId.Text;
            string vendorName = txtName.Text;
            string addr1 = txtAddress1.Text;
            string addr2 = txtAddress2.Text;
            string mobile= txtMobile.Text;
            string email = txtEmail.Text;
            string country = txtCountry.Text;
            string city = txtCity.Text;
            string postalcode = txtPostalcode.Text;
            string contactPerson = txtContactperson.Text;
            objdalVendorInfo.Insert_vendor_info(option,vendorid,vendorName,mobile,email,addr1,addr2,country,city,postalcode,"MIS");
        }

       private void BindVendorTogrid()
       {
           grdVendor.DataSource = objdalVendorInfo.GetAllVendor(option,"");
           grdVendor.DataBind();
       }

       protected void grdVendor_PageIndexChanged(object source, DataGridPageChangedEventArgs e)
       {
           BindVendorTogrid();  
       }

       protected void grdVendor_ItemCommand(object source, DataGridCommandEventArgs e)
       {

       }

       protected void grdVendor_PageIndexChanging(object sender, GridViewPageEventArgs e)
       {
           grdVendor.PageIndex = e.NewPageIndex;
            BindVendorTogrid();
       }
       protected void btnlink(object sender, EventArgs e)
       {
           int i = 0;
           GridViewRow grdrow = (GridViewRow)(sender as Control).Parent.Parent;
           int RowIndex = grdrow.RowIndex;
           txtId.Text = grdVendor.Rows[RowIndex].Cells[0].Text;
           txtName.Text = grdVendor.Rows[RowIndex].Cells[1].Text;
           txtAddress1.Text= grdVendor.Rows[RowIndex].Cells[4].Text;
           txtAddress2.Text = grdVendor.Rows[RowIndex].Cells[5].Text;
           txtMobile.Text = grdVendor.Rows[RowIndex].Cells[2].Text;
           txtEmail.Text = grdVendor.Rows[RowIndex].Cells[3].Text;
           txtCity.Text = grdVendor.Rows[RowIndex].Cells[7].Text;
           txtCountry.Text = grdVendor.Rows[RowIndex].Cells[6].Text;
           txtPostalcode.Text = grdVendor.Rows[RowIndex].Cells[8].Text;
           btnUpdate.Enabled = true;
       }
       protected void grdVendor_SelectedIndexChanged(object sender, EventArgs e)
       {
           GridViewRow selectedRow = grdVendor.SelectedRow;
           txtId.Text = selectedRow.Cells[0].Text;
           txtName.Text = selectedRow.Cells[1].Text;
           txtAddress1.Text = selectedRow.Cells[3].Text; 
       }

       protected void btnUpdate_Click(object sender, EventArgs e)
       {
           option = 2;
           AccessVendor();
           option = 1;
           BindVendorTogrid();
           string message = "Data have been Updated successfully.";
           string script = "window.onload = function(){ alert('";
           script += message;
           script += "')};";
           ClientScript.RegisterStartupScript(this.GetType(), "SuccessMessage", script, true);
       }

       //this code is for clear or refresh start
#region for refresh

       protected void btnClear_Click(object sender, EventArgs e)
       {
           Refresh();
           btnSave.Enabled = true;
       }

        private void Refresh()
        {

            txtName.Text= "";
            txtAddress1.Text = "";
            txtAddress2.Text = "";
            txtCity.Text = "";
            txtContactperson.Text = "";
            txtCountry.Text = "";
            txtEmail.Text = "";
            txtMobile.Text = "";
            txtPostalcode.Text = "";
            BindMax();
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

      

       
 //end function for clear...
#endregion

    }
}




  