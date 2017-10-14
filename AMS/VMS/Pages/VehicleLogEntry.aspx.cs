using AMS.Service_References.DAL;
using AMS.VMS.BO;
using AMS.VMS.DAL;
using System;
using System.Data;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace AMS.VMS.Pages
{
    public partial class VehicleLogEntry : System.Web.UI.Page
    {
        DataTable dt = new DataTable();
        dalVehicleLogEntry objdalVehicleLogEntry = new dalVehicleLogEntry();
        dalCommonClass objdalCommonClass = new dalCommonClass();
        CommonClass objCommonClass = new CommonClass();
        mySession objSession=new mySession();

        int option = 1;

        protected void Page_Load(object sender, EventArgs e)
        {
            if (objSession.curent.Username != null)
            {
                if (!this.IsPostBack)
                {
                    getDriver();
                    getIndepot();
                    BindMax();
                    BindRegidtrationNo();
                    BindDepartmrnt();
                    BindOpenBalance();
                    //txtId.Enabled = false;
                    FuelType();
                }
            }




            else
            {
                Response.Redirect("Login.aspx");

            }

          
        }

        public void getDriver()
        {
            //dt = objdalVehicleLogEntry.GetDriver();
            //GridView1.DataSource = dt;
            //GridView1.DataBind();

        }

        public void getIndepot()
        {
            //dt = objdalVehicleLogEntry.GetDepot();
            //GridView2.DataSource = dt;
            //GridView2.DataBind();

        }
        public void BindRegidtrationNo()
        {
            dt = objdalVehicleLogEntry.GetVehicleRegistrationNo();
            ddlVehicleRegistrationNo.DataSource = dt;
            ddlVehicleRegistrationNo.DataBind();

            ddlVehicleRegistrationNo.DataTextField = "RegNo";

            ddlVehicleRegistrationNo.DataValueField = "RegNo";
            ddlVehicleRegistrationNo.DataBind();

        }

        public void BindDepartmrnt()
        {
            dt = objdalVehicleLogEntry.GetDepotName();
            ddlDepot.DataSource = dt;
            ddlDepot.DataBind();

            ddlDepot.DataTextField = "deptName";

            ddlDepot.DataValueField = "deptName";
            ddlDepot.DataBind();

        }
        private void BindMax()
        {
            dt = objdalVehicleLogEntry.GetMaxLogId();
            objCommonClass.myfBindMaxValueInFourDigit(txtId, dt);
        }



        //protected void GridView2_PageIndexChanging(object sender, GridViewPageEventArgs e)
        //{
            //GridView2.PageIndex = e.NewPageIndex;
        //}

        //protected void GridView1_PageIndexChanging(object sender, GridViewPageEventArgs e)
        //{
            //GridView1.PageIndex = e.NewPageIndex;
        //}


        //protected void btnlink1(object sender, EventArgs e)
        //{
            //int i = 0;
            //if (GridView1.Rows.Count > 0)
            //{
            //    GridViewRow grdrow = (GridViewRow)(sender as Control).Parent.Parent;
            //    int RowIndex = grdrow.RowIndex;

            //    string driver = GridView1.Rows[RowIndex].Cells[0].Text;
            //    txtDriver.Text += driver + ',';

            //}

          
        //}

        //protected void btnlink(object sender, EventArgs e)
        //{
            //int i = 0;
            //if (GridView2.Rows.Count > 0)
            //{
            //    GridViewRow grdrow = (GridViewRow)(sender as Control).Parent.Parent;
            //    int RowIndex = grdrow.RowIndex;
        
            //    string toWhere=GridView2.Rows[RowIndex].Cells[0].Text;
            //    txtto.Text += toWhere + ',';

            //    //txt
            //}


        //}

        private void FuelType()
        {
            //string regno = ddlVehicleRegistrationNo.Text.Trim();
            //dt = objdalVehicleLogEntry.GetFuelType(regno);
            //if(dt.Rows.Count>0)
            //{
            //    string fueltp = dt.Rows[0]["FuelType"].ToString();
            //    ddlFuelType.Text = fueltp;
            //    //ddlFuelType.DataValueField = fueltp;
            //    //ddlFuelType.DataBind();
                                 
            //}
            //else
            //{

            //}
        }

        private void BindOpenBalance()
        {
            dt = null;
            if(txtFromDate.Text=="")
            {

            }
            else 
            {

            dt = objdalVehicleLogEntry.GetOpenBalance(ddlVehicleRegistrationNo.Text.Trim(),txtFromDate.Text.Trim());
            if (dt.Rows.Count >= 1)
            {
                
                txtOpenBalance.Text = dt.Rows[0]["ClosingBal"].ToString();
                txtMileageOut.Text = dt.Rows[0]["MilageIn"].ToString();
            }
            else
            {
                txtOpenBalance.Text = "0";
                txtMileageOut.Text = "0";
            }
        }

        }

        private void AccessVehicleLogEntry()
        {
            if (txtMileageIn.Text == "" || txtMileageOut.Text == "" || txtClosingBalance.Text == "" || txtOctenIssueIntaka.Text == "")
            {

            }
           else {
                string logid = txtId.Text;
                string regNo = ddlVehicleRegistrationNo.Text;
                string frmdate = txtFromDate.Text;

                int indexOfDeptCd = ddlDepot.Text.IndexOf('[') + 1;
                string DeptCd = ddlDepot.Text.Substring(indexOfDeptCd, 2).ToString();


                //string DeptCd =ddlDepot.Text;
                string DriverName = txtDriver.Text;
                string RoadName = txtRoadName.Text;
                string lFrom = ddlDepot.Text;
                //string frmdptname = lFrom.Substring(0, 50);
                string FromTime = txtFromTime.Text;
                string lTo = txtto.Text;
                string InTime = txtIntime.Text;
                string NatureOfWork = txtNatureOfWork.Text;
                int MilageOut = Convert.ToInt32(txtMileageOut.Text);
                int MilageIn = Convert.ToInt32(txtMileageIn.Text);
                int OpnBalance = Convert.ToInt32(txtOpenBalance.Text);
                int IssueInTaka = Convert.ToInt32(txtIssueIntaka.Text);
                int issueInOctan = Convert.ToInt32(txtOctenIssueIntaka.Text);
                int ClosingBalance = Convert.ToInt32(txtClosingBalance.Text);
                string runnigBy = ddlFuelType.Text;
                int OpnBanance = Convert.ToInt32(txtOpenBalance.Text);
                int PQBAmt = Convert.ToInt32(txtPKB.Text);
                string UserId = "";
                objdalVehicleLogEntry.Insert_Vehicle_Log_Entry(option, logid, regNo, frmdate, DeptCd, DriverName, RoadName, lFrom, FromTime, lTo, InTime, NatureOfWork, MilageOut, MilageIn, OpnBanance, IssueInTaka, ClosingBalance, issueInOctan, runnigBy, PQBAmt, UserId);
            }
        }


        protected void GridView2_SelectedIndexChanged(object sender, EventArgs e)
        {
           // string name = GridView2.SelectedRow.Cells[0].Text;

           // //Accessing TemplateField Column controls
           // string country = (GridView1.SelectedRow.FindControl("CheckBox1") as CheckBox).Text;

           //txtDriver.Text = "<b>Name:</b> " + name + " <b>Country:</b> " + country;
        }


        private void refersh()
        {
            BindMax();
            txtDriver.Text="";
            txtIssueIntaka.Text = "";
            txtOpenBalance.Text = "";
            txtMileageIn.Text = "";
            txtNatureOfWork.Text = "";
            txtto.Text = "";
            txtRoadName.Text = "";
            txtMileageOut.Text = "";
        }

        protected void btnSave_Click(object sender, EventArgs e)
        {
            option = 1;

            if (ddlFuelType.Text.Trim() == "Select Fuel Type")
            {
                string message = "Please Select Runnig Fuel.......";
                string script = "window.onload = function(){ alert('";
                script += message;
                script += "')};";
                ClientScript.RegisterStartupScript(this.GetType(), "SuccessMessage", script, true);
            }
            else
            {
                AccessVehicleLogEntry();
                string message = "Data have been saved successfully.";
                string script = "window.onload = function(){ alert('";
                script += message;
                script += "')};";
                ClientScript.RegisterStartupScript(this.GetType(), "SuccessMessage", script, true);
                refersh();
            }


        }

        protected void btnEdit_Click(object sender, EventArgs e)
        {
            //if (!this.IsPostBack)
            //{
                txtId.Enabled = true;

                //if(Convert.ToInt32(txtMileageOut.Text)>0)
                //{
                dt = objdalVehicleLogEntry.Get_LogEntry(txtId.Text.Trim());
                if(dt.Rows.Count>0)
                {
                     txtDriver.Text = dt.Rows[0]["DriverName"].ToString();
                     txtFromDate.Text = dt.Rows[0]["Fromdate"].ToString();
                     txtIntime.Text = dt.Rows[0]["InTime"].ToString();
                     ddlVehicleRegistrationNo.Text = dt.Rows[0]["VehicleRegNo"].ToString();


                    txtFromTime.Text = dt.Rows[0]["FromTime"].ToString();
                    txtFromDate.Text = dt.Rows[0]["Fromdate"].ToString();
                    txtIntime.Text = dt.Rows[0]["InTime"].ToString();
                    ddlVehicleRegistrationNo.Text = dt.Rows[0]["VehicleRegNo"].ToString();
                    txtMileageIn.Text = dt.Rows[0]["MilageIn"].ToString();
                    txtMileageOut.Text = dt.Rows[0]["MilageOut"].ToString();

                    txtClosingBalance.Text = dt.Rows[0]["ClosingBal"].ToString();
                    txtOctenIssueIntaka.Text = dt.Rows[0]["IssueInOctan"].ToString();


                    txtRoadName.Text = dt.Rows[0]["RoadName"].ToString();
                    txtIssueIntaka.Text = dt.Rows[0]["IssueInTaka"].ToString();
                    txtNatureOfWork.Text = dt.Rows[0]["NatureOfWork"].ToString();
                    txtto.Text = dt.Rows[0]["lTo"].ToString();
                    txtPKB.Text = dt.Rows[0]["PQBAmt"].ToString();
                    
                }
                else
                {
                    ScriptManager.RegisterStartupScript(this, GetType(), "alertMessage", "alert('No record Found!');", true);
                }

            //}
        }

        protected void ddlVehicleRegistrationNo_SelectedIndexChanged(object sender, EventArgs e)
        {
            BindOpenBalance();
        }

        protected void txtRoadName_TextChanged(object sender, EventArgs e)
        {
            
        }

        protected void txtFromDate_TextChanged(object sender, EventArgs e)
        {
            BindOpenBalance(); 
        }

    }
}