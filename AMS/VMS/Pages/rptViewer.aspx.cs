using AMS.VMS.BO;
using AMS.VMS.Reports;
using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;

using CrystalDecisions.CrystalReports.Engine;
using CrystalDecisions.Shared;
using CrystalDecisions.Web;
using CrystalDecisions.ReportSource;
using System.IO;
using AMS.VMS.DAL;
using AMS.Service_References.DAL; 

namespace AMS.VMS.Pages
{
    public partial class rptViewer : System.Web.UI.Page
    {
        dalDriverInformation objdalDriverInfo = new dalDriverInformation();
        dalReport objdalReport = new dalReport();
        string SP = string.Empty;
        string reportname = string.Empty;
        string Year = string.Empty;
        string Month = string.Empty;
        mySession session=new mySession();
      
        protected void Page_Load(object sender, EventArgs e)
        {
            //if (!IsPostBack)
            //{
                GetReport(SP, reportname);
            //}
        }


        public rptViewer()
        {

           
        }

        public rptViewer(string sp,string rptName)
        {
            
            this.SP = sp;
            this.reportname = rptName;
        }
        public rptViewer(string rptName)
        {
           
            //this.SP = sp;
            //this.reportname = session.curent.FIdeptDetail;
            //this.reportname = rptName;
        }
        public rptViewer(string sp, string rptName, string year, string month)
        {
        
            this.SP = sp;
            this.reportname = rptName;
            this.Year = year;
            this.Month = month;
        }

        private void GetReport(string sp, string rptname)
        {
            string reportname = session.curent.rptName;
            string deptId = session.curent.DeptId;
            //string empid = session.curent.FIdDetail;
            //string Applydt = session.curent.FIApplyDateDetail;
            VehicleManual rptDs = new VehicleManual();
            ReportDocument rptDoc = new ReportDocument();
            DataTable dt = new DataTable();
            dt = objdalDriverInfo.GetAllDriver(1, "");

            //string lvetype = session.curent.Getlvetype;
            string id = session.curent.Uid;

            try
            {
                if (session.curent.rptName == "Vehicle_Schedule_Manual")
                {

                    rptVehicleScheduleManual obj = new rptVehicleScheduleManual();

                    string strrptPath = System.Web.HttpContext.Current.Server.MapPath(@"~/VMS/Reports/rptVehicleScheduleManual.rpt");

                    rptDoc.Load(strrptPath, OpenReportMethod.OpenReportByTempCopy);
                    ((TextObject)rptDoc.ReportDefinition.ReportObjects["txtCarModule"]).Text = session.curent.DeptName;
                    ((TextObject)rptDoc.ReportDefinition.ReportObjects["txtDepot"]).Text = session.curent.VregNo;
                    dt.TableName = "Get_Driver_Information";
                    rptDoc.SetDataSource(dt);



                    CrystalReportViewer1.ReportSource = rptDoc;


                    string exportPath = "D:\\Vehicle_Schedule_Manual.pdf"; //where file will be exported and ensure that the drive or folder shared or write permission


                    rptDoc.ExportToDisk(ExportFormatType.PortableDocFormat, exportPath);


                }
                    
                else if (session.curent.rptName == "Vehicle_Log_Entry")
                {
                    LogBookForVehicle obj = new LogBookForVehicle();

                    string strrptPath = System.Web.HttpContext.Current.Server.MapPath(@"~/VMS/Reports/LogBookForVehicle.rpt");

                    rptDoc.Load(strrptPath, OpenReportMethod.OpenReportByTempCopy);
                    //((TextObject)rptDoc.ReportDefinition.ReportObjects["txtCarModule"]).Text = "ffffffffff";
                  
                    dt = objdalReport.GetVehicleLogEntry(session.curent.regNo);


                    dt.TableName = "Get_Log_Entry";
                    rptDoc.SetDataSource(dt);



                    CrystalReportViewer1.ReportSource = rptDoc;
                    
                }

//

                else if (session.curent.rptName == "Vehicle_Individual_Monthly_Statement")
                {
                    dt = null;
                    rpt_Monthly_Individual_Vehicle_Statement obj = new rpt_Monthly_Individual_Vehicle_Statement();

                    string strrptPath = System.Web.HttpContext.Current.Server.MapPath(@"~/VMS/Reports/rpt_Monthly_Individual_Vehicle_Statement.rpt");

                    rptDoc.Load(strrptPath, OpenReportMethod.OpenReportByTempCopy);
                    //((TextObject)rptDoc.ReportDefinition.ReportObjects["txtCarModule"]).Text = "ffffffffff";
                   
                    dt = objdalReport.rptMonthlyStatement(session.curent.MyDateInString, session.curent.regNo);

                    dt.TableName = "Get_Monthly_Statement";
                   
                    rptDoc.SetDataSource(dt);
                                        
                    CrystalReportViewer1.ReportSource = rptDoc;
                    
                }
                    //Driver_Information
                else if (session.curent.rptName == "Vehicle_Monthly_All_Vehicle_Statement")
                {
                    dt = null;
                    rpt_Monthly_Statement_Of_Particular_Vehicle obj = new rpt_Monthly_Statement_Of_Particular_Vehicle();

                    string strrptPath = System.Web.HttpContext.Current.Server.MapPath(@"~/VMS/Reports/rpt_Monthly_Statement_Of_Particular_Vehicle.rpt");

                    rptDoc.Load(strrptPath, OpenReportMethod.OpenReportByTempCopy);
                    //((TextObject)rptDoc.ReportDefinition.ReportObjects["txtCarModule"]).Text = "ffffffffff";

                    dt = objdalReport.rptMonthlyStatement_All_Vehicle(session.curent.MyDateInString, session.curent.DeptId);

                    dt.TableName = "Get_Monthly_Statement";

                    rptDoc.SetDataSource(dt);
                    CrystalReportViewer1.ReportSource = rptDoc;

                    string exportPath = "D:\\rpt_Monthly_Statement_Of_Particular_Vehicle.pdf"; 
                    rptDoc.ExportToDisk(ExportFormatType.PortableDocFormat, exportPath);
                               

                }//////

                else if (session.curent.rptName == "Purchase_Vehicle_Parts")
                {
                    dt = null;
                    rpt_Purchase_Spare_Parts obj = new rpt_Purchase_Spare_Parts();

                    string strrptPath = System.Web.HttpContext.Current.Server.MapPath(@"~/VMS/Reports/rpt_Purchase_Spare_Parts.rpt");

                    rptDoc.Load(strrptPath, OpenReportMethod.OpenReportByTempCopy);
                    //((TextObject)rptDoc.ReportDefinition.ReportObjects["txtCarModule"]).Text = "ffffffffff";

                    dt = objdalReport.Purchase_Spare_Parts( session.curent.regNo, session.curent.MyDateInString, session.curent.DeptId);

                    dt.TableName = "Purchase_Vehicle_Parts";

                    rptDoc.SetDataSource(dt);
                    CrystalReportViewer1.ReportSource = rptDoc;

                    string exportPath = "D:\\Purchase_Vehicle_Parts.pdf";
                    rptDoc.ExportToDisk(ExportFormatType.PortableDocFormat, exportPath);


                }





                else if (session.curent.rptName == "Driver_Information")
                {
                    dt = null;
                    rptDriverInfo objrptDriverInfo = new rptDriverInfo();

                    string strrptPath = System.Web.HttpContext.Current.Server.MapPath(@"~/VMS/Reports/rptDriverInfo.rpt");

                    rptDoc.Load(strrptPath, OpenReportMethod.OpenReportByTempCopy);
                    //((TextObject)rptDoc.ReportDefinition.ReportObjects["txtCarModule"]).Text = "ffffffffff";

                    dt = objdalReport.GetDriverInformation();

                    dt.TableName = "Get_Monthly_Statement";

                    rptDoc.SetDataSource(dt);
                       
                    CrystalReportViewer1.ReportSource = rptDoc;

                
                }





            }
            catch (Exception ex)
            {
                throw ex;
            }

        }
        //Purchase_Vehicle_Parts
        protected void CrystalReportViewer1_Init(object sender, EventArgs e)
        {
            //if (!IsPostBack)
            //{
            //    string reportname = session.curent.rptName;
            //    string deptId = session.curent.DeptId;
            //    string empid = session.curent.FIdDetail;
            //    string Applydt = session.curent.FIApplyDateDetail;
            //    VehicleManual rptDs = new VehicleManual();
            //    ReportDocument rptDoc = new ReportDocument();
            //    DataTable dt = new DataTable();
            //    dt = objdalDriverInfo.GetAllDriver(1, "");
               
            //    string lvetype = session.curent.Getlvetype;
            //    string id = session.curent.Uid;

            //    try
            //    {
            //        rptVehicleScheduleManual obj = new rptVehicleScheduleManual();

            //        string strrptPath = System.Web.HttpContext.Current.Server.MapPath(@"/VMS/Reports/rptVehicleScheduleManual.rpt");

            //        rptDoc.Load(strrptPath, OpenReportMethod.OpenReportByTempCopy);
            //        ((TextObject)rptDoc.ReportDefinition.ReportObjects["txtCarModule"]).Text = "ffffffffff";
            //        dt.TableName = "Get_Driver_Information";
            //        rptDoc.SetDataSource(dt);

       

            //        CrystalReportViewer1.ReportSource = rptDoc;
            //    }
            //    catch (Exception ex)
            //    {
            //        throw ex;
            //    }
                


            //}
        }

        //protected void ExportPDF(object sender, EventArgs e)
        //{
        //    ReportDocument crystalReport = new ReportDocument();
        //    BindReport(crystalReport);
        //    ExportFormatType formatType = ExportFormatType.NoFormat;
        //    switch (rbFormat.SelectedItem.Value)
        //    {
        //        case "Word":
        //            formatType = ExportFormatType.WordForWindows;
        //            break;
        //        case "PDF":
        //            formatType = ExportFormatType.PortableDocFormat;
        //            break;
        //        case "Excel":
        //            formatType = ExportFormatType.Excel;
        //            break;
        //        case "CSV":
        //            formatType = ExportFormatType.CharacterSeparatedValues;
        //            break;
        //    }
        //    crystalReport.ExportToHttpResponse(formatType, Response, true, "Crystal");
        //    Response.End();
        //}

        protected void CrystalReportViewer1_Load(object sender, EventArgs e)
        {
            
        }
    }
}