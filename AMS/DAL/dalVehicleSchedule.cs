
using System.Data;
namespace AMS.VMS.DAL
{
    public class dalVehicleSchedule
    {
        DataTable dt = new DataTable();
        public DataTable GetDriverr()
        {
            string query = "SELECT     DriverId, FirstName+' '+  LastName as DriverName FROM         Driver_Information";
            dt = DataExecute.GetDataSet(query).Tables[0];
            return dt;
        }

        public DataTable VehicleId()
        {
            string query = "SELECT  VId,ModelNo FROM         Vehicle_Information";
            dt = DataExecute.GetDataSet(query).Tables[0];
            return dt;
        }
    }
}