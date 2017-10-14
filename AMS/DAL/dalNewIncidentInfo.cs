
using System.Data;
using AMS.VMS.DAL;

namespace AMS.Service_References.DAL
{
    public class dalNewIncidentInfo
    {
        DataExecute objDataExecute = new DataExecute();
        DataTable dt = new DataTable();


        public void Insert_New_Incident(int option, string IncidentId, string VehicleRegNo, string IncidentLocation, string DriverId, int PersonList, string Destination, int CashAmt, int ProductAmt, string IncidentDate, string IncidentTime, string UserId)
        {
            string query = "[Insert_New_Incident]'" + option + "','" + IncidentId + "','" + VehicleRegNo + "','" + IncidentLocation + "','" + DriverId + "','" + PersonList + "','" + Destination + "','" + CashAmt + "','" + ProductAmt + "','" + IncidentDate + "','" + IncidentTime + "','" + UserId + "'";
            DataExecute.GetDataSet(query);
        }


        public DataTable GetNewIncident(int option, int IncidentId)
        {
            string query = "[Get_New_Incident_Information] '" + option + "','" + IncidentId + "'";
            return dt;
        }


        public DataTable GetMaxIncidentId()
        {
            string query = "SELECT  isnull(MAX(IncidntId),0)+1 as CountId FROM New_Incident_Info";
            dt = DataExecute.GetDataSet(query).Tables[0];
            return dt;
        }


        public DataTable GetVehicles()
        {
            string query = " SELECT [RegNo] FROM [AMS_DB].[dbo].[Vehicle_Registration] ";
            dt = DataExecute.GetDataSet(query).Tables[0];
            return dt;
        }


        public DataTable GetDriver()
        {
            string query = " SELECT [DriverId] FROM [AMS_DB].[dbo].[Driver_Information] ";
            dt = DataExecute.GetDataSet(query).Tables[0];
            return dt;
        }


    }
}
