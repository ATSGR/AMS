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
    public partial class PurchaseAmount : System.Web.UI.Page
    {

 // dalNewIncidentInfo objdalNewIncidentInfo = new dalNewIncidentInfo();

        dalPurchaseInfo objdalPurchaseInfo = new dalPurchaseInfo();
        CommonClass objCommonClass = new CommonClass();
        DataTable dt = new DataTable();
        int option = 1;
    
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                BindVehicles();
                BindDriver();
                BindMax();
            }
        }



        private void BindVehicles()
        {
            dt = objdalPurchaseInfo.GetVehicles();
            ddlVehicle.DataSource = dt;
            ddlVehicle.DataBind();
            ddlVehicle.DataTextField = "VId";
            ddlVehicle.DataBind();
        }


        private void BindDriver()
        {
            dt=objdalPurchaseInfo.GetDriver();
            ddlDriver.DataSource=dt;
            ddlDriver.DataBind();
            ddlDriver.DataTextField="DriverId";
            ddlDriver.DataValueField="DriverId";
            ddlDriver.DataBind();
        }

         private void BindMax()
        {
           dt=objdalPurchaseInfo.GetMaxIncidentId();
           objCommonClass.myfBindMaxValueInFourDigit(txtId, dt);
        }

         protected void btnSave_Click(object sender, EventArgs e)
         {
             option = 1;
             AccessPurchaseInfo();
             //btnSave.Enabled = false;
             string message = "Data have been saved successfully.";
             string script = "window.onload = function(){ alert('";
             script += message;
             script += "')};";
             ClientScript.RegisterStartupScript(this.GetType(), "SuccessMessage", script, true);
             Refresh();


         }


         private void AccessPurchaseInfo()
         {
             string Id = txtId.Text;
             string VehicleId=ddlVehicle.Text;
             string SerialNumber=txtSerial.Text;
             string DriverId=ddlDriver.Text;
             string PurcaseDate=txtPurcaseDate.Text;
             string PurchaseTime=txtTime.Text;
             string MeterRading=txtMiterreading.Text;
             string Liter=txtLiter.Text;
             string Amount=txtAmount.Text;
             //objdalPurchaseInfo.Insert_New_PurchaseInfo(option, Id, VehicleId, SerialNumber, DriverId, PurcaseDate, PurchaseTime, MeterRading, Liter, Amount, "MIS");
             objdalPurchaseInfo.Insert_New_PurchaseInfo(option, Id, VehicleId, SerialNumber, DriverId, PurcaseDate, PurchaseTime, MeterRading, Liter, Amount, "MIS");
         }

         private void Refresh()
         {

             txtId.Text = "";
             ddlVehicle.Items.Clear();
             ddlDriver.Items.Clear();
             txtAmount.Text = "";
             txtLiter.Text = "";
             txtMiterreading.Text = "";
             txtPurcaseDate.Text = "";
             txtSerial.Text = "";
             txtTime.Text = "";


         }




    }
}
