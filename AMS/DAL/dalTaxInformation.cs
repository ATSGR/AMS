using AMS.VMS.DAL;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;

namespace AMS.DAL
{
    public class dalTaxInformation
    {
        DataExecute objDataExecute = new DataExecute();
        DataTable dt = new DataTable();

        public DataTable GetVehiclesRegistrationNumber()
        {
            string query = "SELECT [RegNo] FROM [AMS_DB].[dbo].[Vehicle_Registration]";
            dt = DataExecute.GetDataSet(query).Tables[0];
            return dt;
        }


        public DataTable GetMaxCode()
        {
            //Method for auto genetrated code for insurcance like as .. 0001

            string query = "SELECT  isnull(MAX(Code),0)+1 as CountId FROM Vehicles_Tax_TokenInfo";
            dt = DataExecute.GetDataSet(query).Tables[0];
            return dt;
        }

        public void InsertvehiclsTaxToken(int option, string Code, string RegNo, string TaxTokenNo, string TransacTionNo, string ETrackingNo, string BankName, string BranchName, string TellerName, string ExpireDate, string IssueDate, int NoTyres, string TyreSize, string OverHangFont, string OverhangBack, string Name, string FatherName, string Address, string Tin, string FromDate, string ToDate, string ApproveDate, string VisitDate, string Visitorname, string Designation, string AreaName, string RegistrationDate, string CreatedBy )
        {
            string query = "[Insert_Vehicles_tax_Information]'" + option + "', '" + Code + "', '" + RegNo + "', '" + TaxTokenNo + "','" + TransacTionNo + "','" + ETrackingNo + "','" + BankName + "','" + BranchName + "','" + TellerName + "','" + ExpireDate + "','" + IssueDate + "','" + NoTyres + "','" + TyreSize + "','" + OverHangFont + "','" + OverhangBack + "','" + Name + "','" + FatherName + "','" + Address + "','" + Tin + "','" + FromDate + "','" + ToDate + "','" + ApproveDate + "','" + VisitDate + "','" + Visitorname + "','" + Designation + "','" + AreaName + "','" + RegistrationDate + "','" + CreatedBy + "'";
            DataExecute.GetDataSet(query);
           
        }
    }
}