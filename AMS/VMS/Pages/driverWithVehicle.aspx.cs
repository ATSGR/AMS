using AMS.Service_References.DAL;
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
    public partial class driverWithVehicle : System.Web.UI.Page
    {
        
        dalVehicleTagWithDriver objdalVehicleTagWithDriver = new dalVehicleTagWithDriver();
        CommonClass objCommonClass = new CommonClass();
        DataTable dt = new DataTable();
        int option = 1;


        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                BindVehicleRegistration();
                BindDriverId();
                btnEdit.Visible = false;
                btnDelete.Visible = false;
                //btnEdit.Enabled = false;
                //btnDelete.Enabled = false;
                BindMax();
            }


        }


        private void BindVehicleRegistration()
        {
            dt = objdalVehicleTagWithDriver.GetvehiclesRegistration();
            ddlVehicleRegNo.DataSource = dt;
            ddlVehicleRegNo.DataBind();
            ddlVehicleRegNo.DataTextField = "RegNo";
            ddlVehicleRegNo.DataBind();
        }

        private void BindDriverId()
        {
            dt = objdalVehicleTagWithDriver.GetDriverId();
            ddlDriver.DataSource = dt;
            ddlDriver.DataBind();
            ddlDriver.DataTextField = "driverId";
            ddlDriver.DataBind();
        }

        private void BindMax()
        {
            //dt = objdalOtherExpanseInfo.GetExpenseId();
            //objCommonClass.myfBindMaxValueInFourDigit(txtId, dt);
            dt = objdalVehicleTagWithDriver.GetMaxId();
            objCommonClass.myfBindMaxValueInFourDigit(txtId, dt);
        }


        protected void btnSave_Click(object sender, EventArgs e)
        {
            option = 1;
            AccessVehicleTag();
            //btnSave.Enabled = false;
            string message = "Data have been saved successfully.";
            string script = "window.onload = function(){ alert('";
            script += message;
            script += "')};";
            ClientScript.RegisterStartupScript(this.GetType(), "SuccessMessage", script, true);
            Refresh();
            BindMax();


        }


        private void AccessVehicleTag()
        {

            string Id = txtId.Text;
            string DriverId = ddlDriver.Text;
            string VehicleRegNo = ddlVehicleRegNo.Text;
            objdalVehicleTagWithDriver.Insert_Vehicle_Driver_Tag_Info(option, Id, DriverId, VehicleRegNo, "MIS");

        }

        private void Refresh()
        {
            txtId.Text = "";
            BindMax();
        }


    }
}