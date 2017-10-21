using AMS.VMS.DAL;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;

namespace AMS.DAL
{
    public class DalVehiclesInsurance
    {
        DataExecute objDataExecute = new DataExecute();
        DataTable dt = new DataTable();

        
        public DataTable InsuranceCompany()
        {
            string query = "SELECT DISTINCT[Companyname] FROM [AMS_DB]. [dbo].[Insurance_Company_Info]";
            dt = DataExecute.GetDataSet(query).Tables[0];
            return dt;
        }


        public DataTable InsuranceBranchName(string Companyname)
        {

            string query = "SELECT [Branch] AS BranchName FROM [AMS_DB].[dbo].[Insurance_Company_BranchInfo] WHERE [Companyname]='" + Companyname + "'";
            dt = DataExecute.GetDataSet(query).Tables[0];
            return dt;

        }
    }

}
