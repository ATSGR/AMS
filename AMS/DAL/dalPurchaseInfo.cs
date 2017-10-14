
using AMS.VMS.DAL;
using System.Data;

namespace AMS.Service_References.DAL
{
    public class dalPurchaseInfo
    {
        DataExecute objDataExecute = new DataExecute();
        DataTable dt = new DataTable();


        public void Insert_New_PurchaseInfo(int option, string Id, string VehicleId, string SerialNumber, string DriverId, string PurcaseDate, string PurchaseTime, 
            string MeterRading, string Liter, string Amount, string UserId)
        {
            string query = "[Insert_New_PurchaseInfo] '" + option + "','" + Id + "','" + VehicleId + "','" + SerialNumber + "','" + DriverId + "','"
             + PurcaseDate + "','" + PurchaseTime + "','" + MeterRading + "','" + Liter + "','" + Amount + "','" + UserId + "'";
            //DataExecute.GetDataSet(query);
            DataExecute.GetDataSet(query);
        }

        public DataTable GetAllPurchaseInfo(int option, string Id)
        {
            string query = "[Get_New_Purchase_Information] '" + option + "' , '" + Id + "'";
            dt = DataExecute.GetDataSet(query).Tables[0];
            return dt;
        }
        public DataTable GetVehicles()
        {
            string query = " SELECT [VId] FROM [AMS_DB].[dbo].[Vehicle_Information] ";
            dt = DataExecute.GetDataSet(query).Tables[0];
            return dt;
        }

        public DataTable GetDriver()
        {
            string query = " SELECT [DriverId] FROM [AMS_DB].[dbo].[Driver_Information]";
            dt = DataExecute.GetDataSet(query).Tables[0];
            return dt;
        }

        public DataTable GetMaxIncidentId()
        {
            string query = "SELECT  isnull(MAX(Id),0)+1 as CountId FROM Purchase_Information_Info";
            dt = DataExecute.GetDataSet(query).Tables[0];
            return dt;

        }

    }
}




 
      