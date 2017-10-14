using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;

namespace AMS.VMS.DAL
{
    public class dalAfterIncidentInfo
    {

        DataExecute objDataExecute = new DataExecute();
        DataTable dt = new DataTable();

        public void Insert_After_Incident_Info(int option, string AfterincidentId, string IncidentId, string RepairStatus, string Compensation, string Cost, string User)
        {
            string query = "[Insert_After_New_Incident] '" + option + "','" + AfterincidentId + "','" + IncidentId + "','" + RepairStatus + "','" + Compensation + "','" + User + "'";
           DataExecute.GetDataSet(query);
        }

        public DataTable GetAllafterincident(int option, string AfterincidentId)
        {
            string query = "[Get_New_Incident_Information] '" + option + "' , '" + AfterincidentId + "'";
            dt = DataExecute.GetDataSet(query).Tables[0];
            return dt;
        }

        public DataTable GetIncident()
        {
            string query = " SELECT [IncidntId] FROM [AMS_DB].[dbo].[New_Incident_Info]";
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
