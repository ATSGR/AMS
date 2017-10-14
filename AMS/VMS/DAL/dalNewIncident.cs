using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;

namespace AMS.VMS.DAL
{
    public class dalNewIncident
    {
        DataExecute objDataExecute = new DataExecute();
        DataTable dt = new DataTable();
    }


      public void Insert_New_Incident_Info( int option, string IncidntId, string VId, string IncidentLocation, string DriverId, string PersonList, string Destination,
    string CashAmt, string ProductAmt, string IncidentDate, string IncidentTime, string DateOfCreation, string UserId   )
        {
            //string query = "[Insert_Vehicle_Information] '" + option + "','" + VId + "','" + VNo + "','" + ModelNo + "','" + ModelYear + "','" + ChassisNo + "','" + BrandName + "','" + VType + "','" + BodyType + "','" + BodyColor + "','" + TireSize + "','" + FuelType + "','" + PurchaseDate + "','" + SeatingCapacity + "','" + Price + "','" + Waranty + "','" + CylinderSize + "','" + Depot + "','" + VendorId + "','" + UserId + "'";
            //DataExecute.GetDataSet(query);

        }
}

