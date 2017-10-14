
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;

namespace AMS.VMS.DAL
{
    public class dalVendorInfo
    {
        DataExecute objDataExecute = new DataExecute();
        DataTable dt = new DataTable();

        public void Insert_vendor_info(int option,string VendorId,string VendorNm,string Mobile,string Email,string Add1,string Add2,string Country,string City,string PostalCode,string UserId)
        {
            string query = "[SP_Insert_Vendor_Information] '" + option + "','" + VendorId + "','" + VendorNm + "','" + Mobile + "','" + Email + "','" + Add1 + "','" + Add2 + "','" + Country + "','" + City + "','" + PostalCode + "','" + UserId + "'";
            DataExecute.GetDataSet(query);
        
        }

        public DataTable GetAllVendor(int option, string VendorId)
        {
            string query = "[SP_Get_Vendor_Information] '" + option + "','" + VendorId + "'";
            dt = DataExecute.GetDataSet(query).Tables[0];
            return dt;
        }

        //public DataTable GetMaxSparepartsId()
        //{
        //    string query = "SELECT  isnull(MAX(Id),0)+1 as CountId FROM Spareparts_Information";
        //    dt = DataExecute.GetDataSet(query).Tables[0];
        //    return dt;
        //}

        public DataTable GetMaxVendorId()
        {
            string query = "SELECT  isnull(MAX(VendorId),0)+1 as CountId FROM VendorInfo";
               dt = DataExecute.GetDataSet(query).Tables[0];
            return dt;
        }
       

    }
}