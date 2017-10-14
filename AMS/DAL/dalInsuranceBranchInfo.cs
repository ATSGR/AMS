using AMS.VMS.DAL;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;

namespace AMS.VMS.Pages
{
    public class dalInsuranceBranchInfo
    {
        DataExecute objDataExecute = new DataExecute();
        DataTable dt = new DataTable();


        public DataTable GetMaxCode()
        {
            //Method for auto genetrated code for insurcance like as .. 0001

            string query = "SELECT  isnull(MAX(Code),0)+1 as CountId FROM Insurance_Company_BranchInfo";
            dt = DataExecute.GetDataSet(query).Tables[0];
            return dt;
        }


        public DataTable InsuranceCompany()
        {
            string query = " select [Companyname] FROM [AMS_DB].[dbo].[Insurance_Company_Info] ";
            dt = DataExecute.GetDataSet(query).Tables[0];
            return dt;
        }

        public void InsertInsuranceBranch(int option, string Companyname, string Branch, string Code, string Phone, string Email, string Address, string CreatedBy)
        {

            string query = "[SP_Insert_Insureance_Company_Branch_Information]'" + option + "', '" + Companyname + "','" + Branch + "', '" + Code + "', '" + Phone + "', '"
                + Email + "', '" + Address + "', '" + CreatedBy + "'";
            DataExecute.GetDataSet(query);
        }







    }
}