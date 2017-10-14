using AMS.VMS.DAL;
using System.Data;
namespace AMS.Service_References.DAL
{
    public class dalLogEntry
    {
        DataExecute objDataExecute = new DataExecute();
        DataTable dt = new DataTable();
        public DataTable GetMaxLogId()
        {
            string query = "SELECT    ISNULL( MAX(logId),0)+1 AS CountId FROM    Vehicle_log";
            dt = DataExecute.GetDataSet(query).Tables[0];
            return dt;
        }
    }
}