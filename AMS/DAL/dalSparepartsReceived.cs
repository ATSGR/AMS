using AMS.VMS.DAL;
using System.Data;

namespace AMS.Service_References.DAL

{
    public class dalSparepartsReceived
    {
        DataExecute objDataExecute = new DataExecute();
        DataTable dt = new DataTable();


        public void Insert_Spareparts_Received(int option, string Id, string VehicleRegNo,  string Department, string Category, string ItemName, string VendorName, string  ReceiveDate,
            string WarrentyPeriod, string WarrentyEndDate, int UnitPrice, int RecQuantity, int TotalUnitPrice, string UserName)
        {
            string query = "[Insert_Purchase_Spareparts_Info]'" + option + "','" + Id + "','" + VehicleRegNo + "','" + Department + "','" + Category + "','" + ItemName + "','"
                + VendorName + "','" + ReceiveDate + "','" + WarrentyPeriod + "','" + WarrentyEndDate + "','" + UnitPrice + "','" + RecQuantity + "','" + TotalUnitPrice + "','" + UserName + "'";
            DataExecute.GetDataSet(query);

        }

        public DataTable GetAllSparepartsReceived(int option, string Id)
        {
            string query = "[Get_Spareparts_received_Info]'" + option + "', '" + Id + "'";
            dt = DataExecute.GetDataSet(query).Tables[0];
            return dt;

        }

        public DataTable Depot()
        {
            string query = " SELECT [DepotName]+'['+DepotId+']' as DepotName FROM [AMS_DB].[dbo].[Department_Info] ";
            dt = DataExecute.GetDataSet(query).Tables[0];
            return dt;
        }

        public DataTable Vendor()
        {
            string query = " SELECT [VendorNm]+'['+VendorId+']' as VendorNm FROM [AMS_DB].[dbo].[VendorInfo] ";
            dt = DataExecute.GetDataSet(query).Tables[0];
            return dt;
        }


        public DataTable Registration()
        {
            string query = " SELECT [RegNo] FROM [AMS_DB].[dbo].[Vehicle_Registration] ";
            dt = DataExecute.GetDataSet(query).Tables[0];
            return dt;
        }


        public DataTable Category()
        {
            string query = " SELECT distinct[Category] FROM [AMS_DB].[dbo].[Spareparts_Information] ";
            dt = DataExecute.GetDataSet(query).Tables[0];
            return dt;
        }


        public DataTable PartsName(string category)
        {
            //string query = " SELECT [Name] FROM [AMS_DB].[dbo].[Spareparts_Information] ";
            string query = "SELECT [Name]+'['+[Id]+']' as Name FROM [AMS_DB].[dbo].[Spareparts_Information] WHERE [Category]='" + category + "'";
            dt = DataExecute.GetDataSet(query).Tables[0];
            return dt;
        }

        public DataTable GetMaxSparepartsrecId()
        {
            string query = "SELECT  isnull(MAX(Id),0)+1 as CountId FROM Spareparts_Receive_Information";
            dt = DataExecute.GetDataSet(query).Tables[0];
            return dt;
        }

        public DataTable GetMaxSparepartsPurchaseIdId()
        {
            string query = "SELECT  isnull(MAX(Id),0)+1 as CountId FROM [Spareparts_Purchase_Info]";
            dt = DataExecute.GetDataSet(query).Tables[0];
            return dt;
        }
    }
}