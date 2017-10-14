using AMS.VMS.BO;
using System;
using System.Data;
using AMS.Service_References.DAL;

namespace AMS.VMS.Pages
{
    public partial class duringIncident : System.Web.UI.Page
    {
        dalNewIncidentInfo objdalNewIncidentInfo = new dalNewIncidentInfo();
        mySession objSession = new mySession();
        DataTable dt = new DataTable();
        CommonClass objCommonClass = new CommonClass();
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
                    BindVehicles();
                    BindDriver();
            }

        private void BindMax()
        {

            dt = objdalNewIncidentInfo.GetMaxIncidentId();
            objCommonClass.myfBindMaxValueInFourDigit(txtId, dt);

        }

        private void AccressIncident()
        {

            string IncidentId = txtId.Text;
            string VehicleRegNo = ddlVehicle.Text;
            string IncidentLocation = txtLocation.Text;
            string DriverId = ddlDriver.Text;
            int PersonList = Convert.ToInt32(txtPersonList.Text);
            string Destination = ddlDestination.Text;
            int CashAmt = Convert.ToInt32(txtCashamt.Text);
            int ProductAmt = Convert.ToInt32(txtProductamt.Text);
            string IncidentDate = txtDate.Text;
            string IncidentTime = txtTime.Text;
            objdalNewIncidentInfo.Insert_New_Incident(option, IncidentId, VehicleRegNo, IncidentLocation, DriverId, PersonList, Destination, CashAmt, ProductAmt, IncidentDate, IncidentTime, "MIS");

        }

        private void BindVehicles()
        {
            dt = objdalNewIncidentInfo.GetVehicles();
            ddlVehicle.DataSource = dt;
            ddlVehicle.DataBind();
            ddlVehicle.DataTextField = "RegNo";
            ddlVehicle.DataValueField = "RegNo";
            ddlVehicle.DataBind();
        }

        private void BindDriver()
        {
            dt = objdalNewIncidentInfo.GetDriver();
            ddlDriver.DataSource = dt;
            ddlDriver.DataTextField = "DriverId";
            ddlDriver.DataValueField = "DriverId";
            ddlDriver.DataBind();

        }

        protected void btnSave_Click(object sender, EventArgs e)
        {
            option = 1;
            AccressIncident();
            string message = "Data have been saved successfully.";
            string script = "window.onload = function(){ alert('";
            script += message;
            script += "')};";
            ClientScript.RegisterStartupScript(this.GetType(), "SuccessMessage", script, true);
            refresh();
        }


        public void refresh()
        {
            txtId.Text = "";
            txtPersonList.Text = "";
            txtCashamt.Text = "";
            txtDate.Text = "";
            txtLocation.Text = "";
            txtTime.Text = "";
            txtProductamt.Text = "";
            ddlDestination.Items.Clear();
            ddlDriver.Items.Clear();
            ddlVehicle.Items.Clear();
            BindMax();
        }

        protected void btnRefresh_Click(object sender, EventArgs e)
        {

            txtPersonList.Text = "";
            txtCashamt.Text = "";
            txtDate.Text = "";
            txtLocation.Text = "";
            txtTime.Text = "";
            txtProductamt.Text = "";

        }
    }
}
