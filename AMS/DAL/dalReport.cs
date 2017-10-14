using AMS.VMS.BO;
using AMS.VMS.DAL;
using System.Data;
namespace AMS.Service_References.DAL
{
    public class dalReport
    {
        DataExecute objDataExecute = new DataExecute();
        DataTable dt = new DataTable();
        mySession objsession = new mySession();

        public DataTable GetVehicleRegistrationNo()
        {

            string query = "SELECT     Vehicle_Information.VId, Vehicle_Information.ModelNo, Vehicle_Registration.RegNo FROM         Vehicle_Information INNER JOIN    Vehicle_Registration ON Vehicle_Information.ChassisNo = Vehicle_Registration.ChasisNo where Vehicle_Information.Depot='" + objsession.curent.logDeptId + "'";
            dt = DataExecute.GetDataSet(query).Tables[0];
            return dt;
        }


        public DataTable GetVehicleRegistrationNo_Admin()
        {

            string query = "SELECT     Vehicle_Information.VId, Vehicle_Information.ModelNo, Vehicle_Registration.RegNo FROM         Vehicle_Information INNER JOIN    Vehicle_Registration ON Vehicle_Information.ChassisNo = Vehicle_Registration.ChasisNo";
            dt = DataExecute.GetDataSet(query).Tables[0];
            return dt;
        }




        public DataTable GetDriverInformation()
        {

            string query = "SELECT     Driver_Information.DriverId, Driver_Information.FirstName+' '+ Driver_Information.LastName as Dname, Driver_Information.PresentAdd, Driver_Information.PerAdd, "
               + " Driver_Information.MobileNo, Driver_Information.RefPerson, Department_Info.DepotName, Department_Info.DepotId, Driver_Information.NID, "
               + " Driver_Information.LicenseNo, Driver_Information.Depot, Driver_Information.BloodGrp, Driver_Information.Experience, Driver_Information.Remarks, "
               + " Vehicle_Driver_Tag_Info.VehicleRegNo FROM         Driver_Information INNER JOIN   Department_Info ON Driver_Information.Depot = Department_Info.DepotName left JOIN "
               + " Vehicle_Driver_Tag_Info ON Driver_Information.DriverId = Vehicle_Driver_Tag_Info.DriverId order by Driver_Information.Depot";
            dt = DataExecute.GetDataSet(query).Tables[0];
            return dt;
        }








        public DataTable GetVehicleLogEntry(string regno)
        {

            string query = " SELECT     Vehicle_log.logId, Vehicle_log.VehicleRegNo, CONVERT(varchar(10), Vehicle_log.Fromdate, 121) AS Fromdate, Vehicle_log.DeptCd, Vehicle_log.DriverName, "
                       +"   Vehicle_log.RoadName, Vehicle_log.lFrom, Vehicle_log.FromTime, Vehicle_log.lTo, Vehicle_log.InTime, Vehicle_log.NatureOfWork, Vehicle_log.MilageOut, "
                         + "  Vehicle_log.MilageIn, Vehicle_log.IssueInTaka, Vehicle_log.ClosingBal, Vehicle_log.IssueInOctan, Department_Info.DepotName,Vehicle_log .OpnBalance, PQBAmt "
                        + "  FROM         Vehicle_log INNER JOIN  Department_Info ON Vehicle_log.DeptCd = Department_Info.DepotId WHERE     (Vehicle_log.VehicleRegNo = '" + regno + "' )";
            dt = DataExecute.GetDataSet(query).Tables[0];
            return dt;
        }

        public DataTable rptMonthlyStatement(string mydate,string regno)
        {

            string query = "[rpt_Monthly_Individual_Vehicle_Statement] '" + mydate + "','" + regno + "'";
            dt = DataExecute.GetDataSet(query).Tables[0];
            return dt;
        }

        public DataTable rptMonthlyStatement_All_Vehicle(string mydate, string deptcd)
        {

            string query = "[rpt_Monthly_Individual_Fuel_Consumtion_Maintenance_Statement] '" + mydate + "','" + deptcd + "'";
            dt = DataExecute.GetDataSet(query).Tables[0];
            return dt;
        }

        public DataTable Purchase_Spare_Parts(string vehicleReg,string mydate, string deptcd)
        {

            string query = "[rpt_Purchase_Spare_Parts] '" + vehicleReg + "', '" + mydate + "','" + deptcd + "'";
            dt = DataExecute.GetDataSet(query).Tables[0];
            return dt;
        }



        public DataTable GetDepotName()
        {

            string query = "SELECT     DepotName+'['+DepotId+']' as deptName FROM         Department_Info where DepotId='" + objsession.curent.logDeptId+ "'";
            dt = DataExecute.GetDataSet(query).Tables[0];
            return dt;
        }

        public DataTable GetDepotName_Admin()
        {

            string query = "SELECT     DepotName+'['+DepotId+']' as deptName FROM         Department_Info ";
            dt = DataExecute.GetDataSet(query).Tables[0];
            return dt;
        }
    }
}