using AMS.Service_References.DAL;
using AMS.VMS.BO;
using AMS.VMS.Reports;
using CrystalDecisions.CrystalReports.Engine;
using CrystalDecisions.Shared;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Text;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace AMS.VMS.Pages
{
    public partial class Report : System.Web.UI.Page
    {
        mySession session = new mySession();
        DataTable dt = new DataTable();
        dalReport objdalReport = new dalReport();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (session.curent.Username!=null)
            {

                if (!IsPostBack)
                {
                    BindVehicleRegNo();
                    BindDepot();
                 
                }
            }

            else
            {
                Response.Redirect("Login.aspx");

            }


            //lblPurchaseDate.Visible = false;
            //txtPurchaseDate.Visible = false;
            //lblVehicleRegNumber.Visible = false;
            //ddlVehicliRegistration.Visible = false;
            //lblDepartment.Visible = false;
            //ddlDepartment.Visible = false;

            
        }
        private void BindVehicleRegNo()
        {   
            dt = objdalReport.GetVehicleRegistrationNo();
            ddlVehicliRegistration.DataSource = dt;
            ddlVehicliRegistration.DataBind();

            ddlVehicliRegistration.DataTextField = "RegNo";

            ddlVehicliRegistration.DataValueField = "RegNo";
            ddlVehicliRegistration.DataBind();
        }


        private void BindDepot()
        {

            if (session.curent.Username == "admin")
            {
                dt = objdalReport.GetDepotName_Admin();
            }
            else
            {
                dt = objdalReport.GetDepotName();
            }

                ddlDepartment.DataSource = dt;
                ddlDepartment.DataBind();

          ddlDepartment.DataTextField = "deptName";

          ddlDepartment.DataValueField = "deptName";
          ddlDepartment.DataBind();

        }

        //private void BindDepot_Admin()
        //{
        //    dt = objdalReport.GetDepotName_Admin();
        //    ddlDepartment.DataSource = dt;
        //    ddlDepartment.DataBind();

        //    ddlDepartment.DataTextField = "deptName";

        //    ddlDepartment.DataValueField = "deptName";
        //    ddlDepartment.DataBind();

        //}



        protected void btnPreview_Click(object sender, EventArgs e)
        {

          
                string sp = "";
                string reportname = "";

                if (rdBtnvehiCleSchuduleManuale.Checked == true)
                {

                    //int indexOfDeptCd = ddlDepartment.Text.IndexOf('[') ;
                    //string DeptCd = ddlDepartment.Text.Substring(0, 2).ToString();


                    session.curent.DeptName = ddlDepartment.Text;
                    session.curent.VregNo = ddlVehicliRegistration.Text;
                    session.curent.rptName = "Vehicle_Schedule_Manual";                
                    //Response.Redirect("rptViewer.aspx");

//script for showing reports in new tab by nasir
                    string url = "rptViewer.aspx";
                    StringBuilder sb = new StringBuilder();
                    sb.Append("<script type = 'text/javascript'>");
                    sb.Append("window.open('");
                    sb.Append(url);
                    sb.Append("');");
                    sb.Append("</script>");
                    ClientScript.RegisterStartupScript(this.GetType(),
                            "script", sb.ToString());                 
//script end for showing reports in new tab.................

                 }
               else if(rdbtnLogEntry.Checked==true)
                {          
                   session.curent.rptName = "Vehicle_Log_Entry";
                    session.curent.regNo = ddlVehicliRegistration.Text;

                    //script for showing reports in new tab by nasir
                    string url = "rptViewer.aspx";
                    StringBuilder sb = new StringBuilder();
                   sb.Append("<script type = 'text/javascript'>");
                    sb.Append("window.open('");
                    sb.Append(url);
                    sb.Append("');");
                    sb.Append("</script>");
                    ClientScript.RegisterStartupScript(this.GetType(),
                            "script", sb.ToString());
                    //script end for showing reports in new tab.................
                    ReportDocument crReportDocument = new ReportDocument();               

               }
                else if (rdbtnMonthlyIndividualVehicleStatement.Checked == true)
                { 

                    session.curent.rptName = "Vehicle_Individual_Monthly_Statement";
                    session.curent.regNo = ddlVehicliRegistration.Text;
                    session.curent.MyDateInString = txtPurchaseDate.Text;
                    //Response.Redirect("rptViewer.aspx");

                    //script for showing reports in new tab by nasir
                    string url = "rptViewer.aspx";
                    StringBuilder sb = new StringBuilder();
                    sb.Append("<script type = 'text/javascript'>");
                    sb.Append("window.open('");
                    sb.Append(url);
                    sb.Append("');");
                    sb.Append("</script>");
                    ClientScript.RegisterStartupScript(this.GetType(),
                            "script", sb.ToString());
                    //script end for showing reports in new tab.................

                }
                else if (rdbtnMonthlyAllVehicleStatement.Checked == true)
                {
                    int indexOfDeptCd = ddlDepartment.Text.IndexOf('[')+1;
                    string DeptCd = ddlDepartment.Text.Substring(indexOfDeptCd, 2).ToString();
                    session.curent.DeptId = DeptCd;
                    session.curent.rptName = "Vehicle_Monthly_All_Vehicle_Statement";
                    session.curent.regNo = ddlVehicliRegistration.Text;
                    session.curent.MyDateInString = txtPurchaseDate.Text;

                    ReportDocument crReportDocument = new ReportDocument();
                    //string exportPath = "D:\\rptVehicleScheduleManual.pdf"; //where file will be exported and ensure that the drive or folder shared or write permission
                    //crReportDocument.ExportToDisk(ExportFormatType.PortableDocFormat, exportPath);
                    //Response.Redirect("ViewPDF.aspx?reportFile=" + exportPath);
                    //Response.Redirect("rptViewer.aspx");

                    //script for showing reports in new tab by nasir
                    string url = "rptViewer.aspx";
                    StringBuilder sb = new StringBuilder();
                    sb.Append("<script type = 'text/javascript'>");
                    sb.Append("window.open('");
                    sb.Append(url);
                    sb.Append("');");
                    sb.Append("</script>");
                    ClientScript.RegisterStartupScript(this.GetType(),
                            "script", sb.ToString());
                    //script end for showing reports in new tab.................



                }

                else if (rdbtnPurchaseSpareParts.Checked == true)
                { 
                    int indexOfDeptCd = ddlDepartment.Text.IndexOf('[') + 1;
                    string DeptCd = ddlDepartment.Text.Substring(indexOfDeptCd, 2).ToString();
                    session.curent.DeptId = DeptCd;
                    session.curent.rptName = "Purchase_Vehicle_Parts";
                    session.curent.regNo = ddlVehicliRegistration.Text;
                    session.curent.MyDateInString = txtPurchaseDate.Text;

                    ReportDocument crReportDocument = new ReportDocument();
                    //string exportPath = "D:\\rptVehicleScheduleManual.pdf"; //where file will be exported and ensure that the drive or folder shared or write permission
                    //crReportDocument.ExportToDisk(ExportFormatType.PortableDocFormat, exportPath);
                    //Response.Redirect("ViewPDF.aspx?reportFile=" + exportPath);
                    //Response.Redirect("rptViewer.aspx");

                    //script for showing reports in new tab by nasir
                    string url = "rptViewer.aspx";
                    StringBuilder sb = new StringBuilder();
                    sb.Append("<script type = 'text/javascript'>");
                    sb.Append("window.open('");
                    sb.Append(url);
                    sb.Append("');");
                    sb.Append("</script>");
                    ClientScript.RegisterStartupScript(this.GetType(),
                            "script", sb.ToString());
                    //script end for showing reports in new tab.................



                }





                else if (rdBtnDriver.Checked == true)
                {                                    
                   session.curent.rptName = "Driver_Information";                      
                    //Response.Redirect("rptViewer.aspx");
                   //script for showing reports in new tab by nasir
                   string url = "rptViewer.aspx";
                   StringBuilder sb = new StringBuilder();
                   sb.Append("<script type = 'text/javascript'>");
                   sb.Append("window.open('");
                   sb.Append(url);
                   sb.Append("');");
                   sb.Append("</script>");
                   ClientScript.RegisterStartupScript(this.GetType(),
                           "script", sb.ToString());
                    //script end for showing reports in new tab.................
                }
        }

        protected void rdbtnLogEntry_CheckedChanged(object sender, EventArgs e)
        {
            lblDepartment.Visible = true;
            ddlDepartment.Visible = true;
            lblPurchaseDate.Visible = true;
            txtPurchaseDate.Visible = true;
            lblVehicleRegNumber.Visible = true;
            ddlVehicliRegistration.Visible = true;
        }

        protected void rdBtnvehiCleSchuduleManuale_CheckedChanged(object sender, EventArgs e)
        {
            //lblDepartment.Visible = false;
            //ddlDepartment.Visible = false;
            //lblPurchaseDate.Visible = false;
            //txtPurchaseDate.Visible = false;
            //lblVehicleRegNumber.Visible = false;
            //ddlVehicliRegistration.Visible = false;
        }

        protected void rdBtnDriver_CheckedChanged(object sender, EventArgs e)
        {


            //lblDepartment.Visible = true;
            //ddlDepartment.Visible = true;
            //lblPurchaseDate.Visible = true;
            //txtPurchaseDate.Visible = true;
            //lblVehicleRegNumber.Visible = true;
            //ddlVehicliRegistration.Visible = true;

        }

        protected void rdbtnMonthlyAllVehicleStatement_CheckedChanged(object sender, EventArgs e)
        {
            //lblDepartment.Visible = true;
            //ddlDepartment.Visible = true;
            //lblPurchaseDate.Visible = true;
            //txtPurchaseDate.Visible = true;
            //lblVehicleRegNumber.Visible = true;
            //ddlVehicliRegistration.Visible = true;
        }

        protected void rdbtnMonthlyIndividualVehicleStatement_CheckedChanged(object sender, EventArgs e)
        {
            //lblDepartment.Visible = true;
            //ddlDepartment.Visible = true;
            //lblPurchaseDate.Visible = true;
            //txtPurchaseDate.Visible = true;
            //lblVehicleRegNumber.Visible = true;
            //ddlVehicliRegistration.Visible = true;
        }

        protected void rdbtnExpense_CheckedChanged(object sender, EventArgs e)
        {

            //lblDepartment.Visible = true;
            //ddlDepartment.Visible = true;
            //lblPurchaseDate.Visible = true;
            //txtPurchaseDate.Visible = true;
            //lblVehicleRegNumber.Visible = true;
            //ddlVehicliRegistration.Visible = true;

        }

        protected void rdbtnPurchaseSpareParts_CheckedChanged(object sender, EventArgs e)
        {

        }

        //protected void btnClose_Click(object sender, EventArgs e)
        //{
            
        //}

   }
    
}