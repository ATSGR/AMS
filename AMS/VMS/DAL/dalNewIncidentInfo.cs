using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;

namespace AMS.VMS.DAL
{
    public class dalNewIncidentInfo
    {
        DataExecute objDataExecute = new DataExecute();
        DataTable dt = new DataTable();


        public void Insert_Incident_info(int option, string IncidntId, string VId, string IncidentLocation, string DriverId, string PersonList, string Destination,
       string CashAmt, string ProductAmt, string IncidentDate, string IncidentTime, string UserId)
        {
            string query = "[Insert_New_Incident] '" + option + "','" + IncidntId + "','" + VId + "','" + IncidentLocation + "','" + DriverId + "','" + PersonList + "','"
             + Destination + "','" + CashAmt + "','" + ProductAmt + "','" + IncidentDate + "','" + IncidentTime + "','" + UserId + "'";
            DataExecute.GetDataSet(query);
        }

        public DataTable GetAllIncident(int option, string IncidentId)
        {
            string query = "[Get_New_Incident_Information] '" + option + "' , '" + IncidentId + "'";
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
            string query = "SELECT  isnull(MAX(VId),0)+1 as CountId FROM New_Incident_Info";
            dt = DataExecute.GetDataSet(query).Tables[0];
            return dt;

        }



       

    }

}

