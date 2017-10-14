using AMS.Service_References.DAL;
using AMS.VMS.BO;
using System;
using System.Data;
using System.Web.UI;


namespace AMS.VMS.Pages
{
    public partial class OtherExpanse : System.Web.UI.Page
    {
        dalOtherExpanseInfo objdalOtherExpanseInfo = new dalOtherExpanseInfo();
        CommonClass objCommonClass = new CommonClass();
        DataTable dt = new DataTable();
        int option = 1;
        mySession objSession = new mySession();

        protected void Page_Load(object sender, EventArgs e)
        {
            if (objSession.curent.Username != null)
            {
                if (!IsPostBack)
                {
                    BindVehicleRegistration();
                    BindMax();
                    btnEdit.Visible = false;
                    btnDelete.Visible = false;
                    //btnEdit.Enabled = false;
                    //btnDelete.Enabled = false;
                }

            }

            else
            {
                Response.Redirect("Login.aspx");

            }


          
        }

        private void BindVehicleRegistration()
        {
            dt = objdalOtherExpanseInfo.GetvehiclesRegistration();
            ddlVehicleRegistration.DataSource = dt;
            ddlVehicleRegistration.DataBind();
            ddlVehicleRegistration.DataTextField = "RegNo";
            ddlVehicleRegistration.DataTextField = "RegNo";
            ddlVehicleRegistration.DataBind();
        }

        private void BindMax()
        {
            dt = objdalOtherExpanseInfo.GetExpenseId();
            objCommonClass.myfBindMaxValueInFourDigit(txtId, dt);
        }


        protected void btnSave_Click(object sender, EventArgs e)
        {
            option = 1;
            AccessOtherExpenseInfo();
            //btnSave.Enabled = false;
            string message = "Data have been saved successfully.";
            string script = "window.onload = function(){ alert('";
            script += message;
            script += "')};";
            ClientScript.RegisterStartupScript(this.GetType(), "SuccessMessage", script, true);
            Refresh();
        }




        private void AccessOtherExpenseInfo()
        {
            string ExpenseId = txtId.Text;
            string VehicleRegistrationNo = ddlVehicleRegistration.Text;
            //string TotalAmtPetrol = txtTotalPetrolAmt.Text;
            //string TotalGasAmt = txtTotalGasAmt.Text;
            int TotalEngineOilAmt = Convert.ToInt32(txtTotalEngineOilAmt.Text);
            int TotalServiceAmt = Convert.ToInt32(txtTotalServiceAmt.Text);
            string PurchaseDate = txtPurchaseDate.Text;
            int TotalRepiarAmt = Convert.ToInt32(txtTotalRepairAmt.Text);
            int TaxAmt = Convert.ToInt32(txtTaxAmount.Text);
            int OtherExpanceAmt = Convert.ToInt32(txtOtherExpanse.Text);
            objdalOtherExpanseInfo.Insert_New_Other_Expanse_Info(option, ExpenseId, VehicleRegistrationNo, TotalEngineOilAmt, TotalServiceAmt,
               PurchaseDate, TotalRepiarAmt, TaxAmt, OtherExpanceAmt, "MIS");
        }

        protected void btnFind_Click(object sender, EventArgs e)
        {
            btnSave.Visible = true;
            btnEdit.Visible = true;
            btnDelete.Visible = true;
            dt = objdalOtherExpanseInfo.Get_Expance(txtId.Text.Trim());
            if (dt.Rows.Count > 0)
            {
                txtId.Text = dt.Rows[0]["ExpenseId"].ToString();
                ddlVehicleRegistration.Text = dt.Rows[0]["VehicleRegistrationNo"].ToString();
                //txtTotalPetrolAmt.Text = dt.Rows[0]["TotalAmtPetrol"].ToString();
                //txtTotalGasAmt.Text = dt.Rows[0]["TotalGasAmt"].ToString();
                txtTotalEngineOilAmt.Text = dt.Rows[0]["TotalEngineOilAmt"].ToString();
                txtTotalServiceAmt.Text = dt.Rows[0]["TotalServiceAmt"].ToString();
                txtPurchaseDate.Text = dt.Rows[0]["PurchaseDate"].ToString();
                txtTotalRepairAmt.Text = dt.Rows[0]["TotalRepiarAmt"].ToString();
                txtTaxAmount.Text = dt.Rows[0]["TaxAmt"].ToString();
                txtOtherExpanse.Text = dt.Rows[0]["OtherExpanceAmt"].ToString();
                //ScriptManager.RegisterStartupScript(this, GetType(), "alertMessage", "alert('Record Loaded!');", true);
            }

            else
            {
                ScriptManager.RegisterStartupScript(this, GetType(), "alertMessage", "alert('No record Found!');", true);
            }

            //Refresh();
        }

        private void Refresh()
        {
            ddlVehicleRegistration.Items.Clear();
            //txtTotalGasAmt.Text = "";
            //txtTotalPetrolAmt.Text = "";
            txtTotalEngineOilAmt.Text = "";
            txtTotalServiceAmt.Text = "";
            txtPurchaseDate.Text = "";
            txtTotalRepairAmt.Text = "";
            txtTaxAmount.Text = "";
            txtOtherExpanse.Text = "";
            BindMax();
        }

        protected void btnEdit_Click(object sender, EventArgs e)
        {
            option = 2;
            AccessOtherExpenseInfo();
            option = 1;
            string message = "Data have been Updated successfully.";
            string script = "window.onload = function(){ alert('";
            script += message;
            script += "')};";
            ClientScript.RegisterStartupScript(this.GetType(), "SuccessMessage", script, true);
            Refresh();
        }
    }

}

