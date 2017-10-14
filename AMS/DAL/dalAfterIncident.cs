
using System.Data;
namespace AMS.VMS.DAL
{
    public class dalAfterIncident
    {
        DataExecute objDataExecute = new DataExecute();
        DataTable dt = new DataTable();

        public void Insert_After_Incident(int option, string AfterincidentId, string IncidentId, string RepairStatus, string Compensation, string Cost, string User)
        {
            string query = "[Insert_After_Incident] '" + option + "','" + AfterincidentId + "','" + IncidentId + "','" + RepairStatus + "','" + Compensation + "','" + Cost + "','" + User + "'";
            DataExecute.GetDataSet(query);
        }

        public DataTable GetAllAfterIncident(int option, string AfterincidentId)
        {
            string query = "[Get_After_Incident_Information] '" + option + "' , '" + AfterincidentId + "'";
            dt = DataExecute.GetDataSet(query).Tables[0];
            return dt;
        }

        public DataTable GetIncident()
        {
            string query = " SELECT [IncidntId] FROM [AMS_DB].[dbo].[New_Incident_Info] ";
            dt = DataExecute.GetDataSet(query).Tables[0];
            return dt;
        }


        public DataTable GetMaxAfterIncidentId()
        {
            string query = "SELECT  isnull(MAX(AfterincidentId),0)+1 as CountId FROM After_Incident_Information";
            dt = DataExecute.GetDataSet(query).Tables[0];
            return dt;

        }


    }
}


//public void Insert_Incident_info(int option, string IncidntId, string VId, string IncidentLocation, string DriverId, string PersonList, string Destination,
//       string CashAmt, string ProductAmt, string IncidentDate, string IncidentTime, string UserId)
//        {
//            string query = "[Insert_New_Incident] '" + option + "','" + IncidntId + "','" + VId + "','" + IncidentLocation + "','" + DriverId + "','" + PersonList + "','"
//             + Destination + "','" + CashAmt + "','" + ProductAmt + "','" + IncidentDate + "','" + IncidentTime + "','" + UserId + "'";
//            DataExecute.GetDataSet(query);
//        }



//public DataTable GetAllIncident(int option, string IncidentId)
//{
//    string query = "[Get_New_Incident_Information] '" + option + "' , '" + IncidentId + "'";
//    dt = DataExecute.GetDataSet(query).Tables[0];
//    return dt;

//}


