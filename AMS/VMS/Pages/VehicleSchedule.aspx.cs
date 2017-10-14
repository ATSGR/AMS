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
    public partial class VehicleSchedule : System.Web.UI.Page
    {
        DataTable dt = new DataTable();
        dalVehicleSchedule objdalVehicleSchedule = new dalVehicleSchedule();
        dalCommonClass objdalCommonClass = new dalCommonClass();
        protected void Page_Load(object sender, EventArgs e)
        {
            refreshdata();
            BindVehicle();
            BindDepot();
        }
        public void refreshdata()
        {


            dt = objdalVehicleSchedule.GetDriverr();
            GridView1.DataSource = dt;
            GridView1.DataBind();


        } 
        private void BindVehicle()
        {
            dt = objdalVehicleSchedule.VehicleId();
            ddlVehicle.DataSource = dt;
            ddlVehicle.DataBind();

            ddlVehicle.DataTextField = "ModelNo";

            ddlVehicle.DataValueField = "ModelNo";
            ddlVehicle.DataBind();
        }
        private void BindDepot()
        {
            dt = objdalCommonClass.GetDepartment();
            ddlDepot.DataSource = dt;
            ddlDepot.DataBind();

            ddlDepot.DataTextField = "DepotName";

            ddlDepot.DataValueField = "DepotName";
            ddlDepot.DataBind();
        }

        protected void btnPreview_Click(object sender, EventArgs e)
        {

        }
    }
}