using AMS.VMS.DAL;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;

namespace AMS.DAL
{
    public class dalInsurenceCompany
    {
        DataExecute objDataExecute = new DataExecute();
        DataTable dt = new DataTable();


        public DataTable GetMaxCode()
        {

            //Method for auto genetrated code for insurcance like as .. 0001

            string query = "SELECT  isnull(MAX(Code),0)+1 as CountId FROM Insurance_Company_Info";
            dt = DataExecute.GetDataSet(query).Tables[0];
            return dt;

        }

        //insert method for inserting to table

        public void InsertInsuranceInfo(int option, string Code, string Name, string Remarks, string UserId)
        {

            string query = "[SP_Insert_Insureance_Company_Information]'" + option + "', '" + Code + "', '" + Name + "', '" + Remarks + "', '" + UserId + "'";
            DataExecute.GetDataSet(query);

        }


        //getall or get by id data retrive metohd

        public DataTable GetAllInsuraceCompany(int option, string code)
        {

            string query = "[Get_Insurance_CompanyInformation]' " + option + "', '" + code + "'";
            dt = DataExecute.GetDataSet(query).Tables[0];
            return dt;

        }




    }
}
