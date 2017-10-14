using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;

namespace AMS.VMS.DAL
{
    public class dalVehicleInformation
    {
        DataExecute objDataExecute = new DataExecute();
        DataTable dt = new DataTable();

        public void Insert_Vehicle_info(int option, string VId, string VNo, string ModelNo, string ModelYear, string ChassisNo, string BrandName, string VType, string BodyType, string BodyColor, string TireSize, string FuelType, string PurchaseDate, string SeatingCapacity, Decimal Price, string Waranty, string CylinderSize, string Depot, string VendorId, string UserId)
        {
            string query = "[Insert_Vehicle_Information] '" + option + "','" + VId + "','" + VNo + "','" + ModelNo + "','" + ModelYear + "','" + ChassisNo + "','" + BrandName + "','" + VType + "','" + BodyType + "','" + BodyColor + "','" + TireSize + "','" + FuelType + "','" + PurchaseDate + "','" + SeatingCapacity + "','" + Price + "','" + Waranty + "','" + CylinderSize + "','" + Depot + "','" + VendorId + "','" + UserId + "'";
            DataExecute.GetDataSet(query);

        }

        public void Insert_Registration_info(int option, string VId, string RegNo, string RegDate, string LiCNo, string LicenseExDate, string RegTo, string Address, string Email, string ContactNo, byte[] RegDocFile, string UserId)
        {
            string query = "[Insert_Vehicle_Registration]'" + option + "','" + VId + "','" + RegNo + "','" + RegDate + "','" + LiCNo + "','" + LicenseExDate + "','" + RegTo + "','" + Address + "','" + Email + "','" + ContactNo + "','" + RegDocFile + "','" + UserId + "'";
            DataExecute.GetDataSet(query);

        }




        public DataTable GetAllVehicle(int option, string VNo)
        {
            string query = "[Get_Vehicle_Information] '" + option + "','" + VNo + "'";
            dt = DataExecute.GetDataSet(query).Tables[0];
            return dt;
        }

        public DataTable GetVendor()
        {
            string query = " SELECT [VendorId] ,[VendorNm]  FROM [AMS_DB].[dbo].[VendorInfo] ";
            dt = DataExecute.GetDataSet(query).Tables[0];
            return dt;
        }

       public DataTable GetMaxVehicleId()
        {
            string query = "SELECT  isnull(MAX(VId),0)+1 as CountId FROM         Vehicle_Information";
            dt = DataExecute.GetDataSet(query).Tables[0];
            return dt;
        }

       public DataTable VehicleId()
       {
           string query = "SELECT  VId FROM         Vehicle_Information";
           dt = DataExecute.GetDataSet(query).Tables[0];
           return dt;
       }

       public DataTable DocDownload(string vid)
       {
           string query = "SELECT     VId, RegNo, RegDocFile FROM         Vehicle_Registration where VId='"+vid+"'";
           dt = DataExecute.GetDataSet(query).Tables[0];
           return dt;
       }



       public DataTable GetVehicleRegistration()
       {
           string query = "SELECT     VId, RegNo,convert(varchar(10), RegDate,121) as RegDate, LiCNo,convert(varchar(10), LicenseExDate,121) as LicenseExDate, RegTo, Address, Email, ContactNo, RegDocFile FROM         Vehicle_Registration";
           dt = DataExecute.GetDataSet(query).Tables[0];
           return dt;
       }
    }
}