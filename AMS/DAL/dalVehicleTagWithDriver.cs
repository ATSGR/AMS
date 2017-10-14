using AMS.VMS.DAL;
using System.Data;

namespace AMS.Service_References.DAL
{
    public class dalVehicleTagWithDriver
    {
        DataExecute objDataExecute = new DataExecute();
        DataTable dt = new DataTable();

        public void Insert_Vehicle_Driver_Tag_Info(int option, string Id, string DriverId, string VehicleRegNo, string UserInfo)
        {
            string query = "[Insert_Vehicle_Driver_Tag_Info] '" + option + "','" + Id + "','" + DriverId + "','" + VehicleRegNo + "','" + UserInfo + "'";
            DataExecute.GetDataSet(query);
        }


        public DataTable GetAllVehicleTagInfo(int option, string Id)
        {

            string query = "[Get_Vehicle_Driver_Tag_Info] '" + option + "' , '" + Id + "'";
            dt = DataExecute.GetDataSet(query).Tables[0];
            return dt;
        }

        public DataTable GetvehiclesRegistration()
        {
            string query = " SELECT [RegNo] FROM [AMS_DB].[dbo].[Vehicle_Registration] ";
            dt = DataExecute.GetDataSet(query).Tables[0];
            return dt;
        }


        public DataTable GetDriverId()
        {
            string query = " SELECT [DriverId] FROM [AMS_DB].[dbo].[Driver_Information] ";
            //string query = "SELECT [firstName]+''+LastName +'['+DriverId+']' as driverName FROM [AMS_DB].[dbo].[Driver_Information]";
            dt = DataExecute.GetDataSet(query).Tables[0];
            return dt;
        }


        public DataTable GetMaxId()
        {
            string query = "SELECT  isnull(MAX(Id),0)+1 as CountId FROM Vehicle_Driver_Tag_Info";
            dt = DataExecute.GetDataSet(query).Tables[0];
            return dt;
        }

    }
}