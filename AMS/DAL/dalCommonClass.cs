
using System.Data;
namespace AMS.VMS.DAL
{
    public class dalCommonClass
    {
        DataTable dt = new DataTable();
        public DataTable GetDepartment()
        {
            string query = "SELECT     DepotId, DepotName FROM         Department_Info";
            dt = DataExecute.GetDataSet(query).Tables[0];
            return dt;
        }


        public DataTable GetCategory()
        {
            string query = "SELECT Id, Name FROM Parts_Category";
            dt = DataExecute.GetDataSet(query).Tables[0];
            return dt;

        }
    }
}