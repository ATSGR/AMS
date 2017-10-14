
using System.Data;
namespace AMS.VMS.DAL
{
    public class dalDriverInformation
    {
        DataExecute objDataExecute = new DataExecute();
        DataTable dt = new DataTable();

        public void Insert_driver_info(int option, string DrverId, string FirstName, string LastName, string PresentAddress, string Permanentaddress, string NID, string LicenseNo, string Depot, string mobile, string BloodGrp, string RefPerson, string experience, string remarks, string UserId)
        {
            string query = "[Insert_Driver_Information] '" + option + "','" + DrverId + "','" + FirstName + "','" + LastName + "','" + PresentAddress + "','" + Permanentaddress + "','" + NID + "','" + LicenseNo + "','" + Depot + "','" + mobile + "','" + BloodGrp + "','" + RefPerson + "','" + experience + "','" + remarks + "','" + UserId + "'";
            DataExecute.GetDataSet(query);

        }

        public DataTable GetAllDriver(int option, string DriverId)
        {
            string query = "[Get_Driver_Information] '" + option + "','" + DriverId + "'";
            dt = DataExecute.GetDataSet(query).Tables[0];
            return dt;
        }
    }
}