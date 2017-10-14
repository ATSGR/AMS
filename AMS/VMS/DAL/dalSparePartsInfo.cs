using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
namespace AMS.VMS.DAL
{
    public class dalSparePartsInfo
    {
        DataExecute objDataExecute = new DataExecute();
        DataTable dt = new DataTable();

        public void Insert_spreparts_info(int option, string Id, string Name, string Category, string SerialNo, string WarrantyPeriod, string Remarks, string UserId)
        {
            string query = "[Insert_Spareparts_Information] '" + option + "','" + Id + "','" + Name + "','" + Category + "','" + SerialNo + "','" + WarrantyPeriod + "','" + Remarks + "','" + UserId + "'";
            DataExecute.GetDataSet(query); 

        }

        public DataTable GetAllspareparts(int option, string Id)
        {
            string query = "[SP_Get_Spareparts_Information] '" + option + "','" + Id+ "'";
               dt = DataExecute.GetDataSet(query).Tables[0];
               return dt;
        }

        //public DataTable GetMaxVehicleId()
        //{
        //    string query = "SELECT  isnull(MAX(VId),0)+1 as CountId FROM         Vehicle_Information";
        //    dt = DataExecute.GetDataSet(query).Tables[0];
        //    return dt;
        //}

        public DataTable GetMaxSparepartsId()
        {
            string query = "SELECT  isnull(MAX(Id),0)+1 as CountId FROM Spareparts_Information";
            dt = DataExecute.GetDataSet(query).Tables[0];
            return dt;
        }

    }
}