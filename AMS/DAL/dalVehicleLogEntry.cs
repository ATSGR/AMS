
using System.Data;
using AMS.VMS.DAL;
using AMS.VMS.BO;

namespace AMS.Service_References.DAL
{
    public class dalVehicleLogEntry
    {
        DataTable dt = new DataTable();

        mySession objSession = new mySession();
        DataExecute objDataExecute = new DataExecute();
       

        public DataTable GetMaxLogId()
        {
            string query = "SELECT    ISNULL( MAX(logId),0)+1 AS CountId FROM    Vehicle_log";
            dt = DataExecute.GetDataSet(query).Tables[0];
            return dt;
        }


        public DataTable GetDriver()
        {
            
            string query = "SELECT     DriverId, FirstName+' '+  LastName as DriverName FROM         Driver_Information";
            dt = DataExecute.GetDataSet(query).Tables[0];
            return dt;
        }

        public DataTable GetDepotName()
        {

            string query = "SELECT     DepotName+'['+DepotId+']' as deptName FROM         Department_Info where DepotId='"+objSession.curent.logDeptId+"'";
            dt = DataExecute.GetDataSet(query).Tables[0];
            return dt;
        }
        public DataTable GetDepot()
        {

            string query = "SELECT DepotName FROM Department_Info";
            dt = DataExecute.GetDataSet(query).Tables[0];
            return dt;
        }

        public DataTable GetVehicleRegistrationNo()
        {

            string query = "SELECT     Vehicle_Information.VId, Vehicle_Information.ModelNo, Vehicle_Registration.RegNo FROM         Vehicle_Information INNER JOIN    Vehicle_Registration ON Vehicle_Information.ChassisNo = Vehicle_Registration.ChasisNo where Vehicle_Information.Depot='"+objSession.curent.logDeptId+"'";
            dt = DataExecute.GetDataSet(query).Tables[0];
            return dt;
        }

        public void Insert_Vehicle_Log_Entry(int option, string logid, string regNo, string frmdate, string DeptCd, string DriverName, string RoadName, string lFrom, string FromTime, string lTo, string InTime, string NatureOfWork, int MilageOut, int MilageIn, int OpnBanance, int IssueInTaka, int clsBalance, int inssueinOctan, string runnigBy, int PQBAmt, string userId)
        {
            string query = "[Insert_Vehicle_Log_Entry] '" + option + "','" + logid + "','" + regNo + "','" + frmdate + "','" + DeptCd + "','" + DriverName + "','" + RoadName + "','" + lFrom + "','" + FromTime + "','" + lTo + "','" + InTime + "','" + NatureOfWork + "','" + MilageOut + "','" + MilageIn + "','" + OpnBanance + "','" + IssueInTaka + "','" + clsBalance + "','" + inssueinOctan + "','" + runnigBy + "','" + PQBAmt + "','" + userId + "'";
            DataExecute.GetDataSet(query);

        }

        public DataTable GetOpenBalance(string VehicleRegNo,string frmdate)
        {
 
            //string query = "SELECT   top(1)  VehicleRegNo, Fromdate, MilageIn, ClosingBal FROM Vehicle_log where VehicleRegNo='"+VehicleRegNo+"'  "
            //              + " order by convert(varchar(10),Fromdate,121) desc";

            string query = "SELECT   top(1)  VehicleRegNo, Fromdate, MilageIn, ClosingBal FROM Vehicle_log where VehicleRegNo='"+VehicleRegNo+"' "
                          + "  and convert(varchar(10),Fromdate,121)<='" + frmdate + "'  order by convert(varchar(10),Fromdate,121) desc";
            dt = DataExecute.GetDataSet(query).Tables[0];
            return dt;
        }

          public DataTable GetFuelType(string VehicleRegNo)
        {

            //string query = "SELECT   top(1)  VehicleRegNo, Fromdate, MilageIn, ClosingBal FROM Vehicle_log where VehicleRegNo='"+VehicleRegNo+"'  "
            //              + " order by convert(varchar(10),Fromdate,121) desc";

            string query = "     SELECT     Vehicle_Information.FuelType FROM Vehicle_Information INNER JOIN   Vehicle_Registration ON "
                        + " Vehicle_Information.ChassisNo = Vehicle_Registration.ChasisNo  where Vehicle_Registration.RegNo='" + VehicleRegNo + "'";
            dt = DataExecute.GetDataSet(query).Tables[0];
            return dt;
        }

   

        public DataTable Get_LogEntry(string lgId)
        {
            string query = " SELECT     logId, VehicleRegNo,convert(varchar(10),[Fromdate],121) as Fromdate, DeptCd, DriverName, RoadName, lFrom, FromTime, lTo, InTime, NatureOfWork, MilageOut, MilageIn, IssueInTaka, ClosingBal,IssueInOctan,PQBAmt FROM Vehicle_log where logId='" + lgId + "'";
            dt=  DataExecute.GetDataSet(query).Tables[0];
            return dt;

        }
    }
}