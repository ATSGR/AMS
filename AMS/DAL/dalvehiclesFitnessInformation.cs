using AMS.VMS.DAL;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;

namespace AMS.DAL
{
    public class dalvehiclesFitnessInformation
    {

        DataExecute objDataExecute = new DataExecute();
        DataTable dt = new DataTable();


        public DataTable GetMaxCode()
        {
            //Method for auto genetrated code for insurcance like as .. 0001

            string query = "SELECT  isnull(MAX(Code),0)+1 as CountId FROM Vehicles_Fitness_Informations";
            dt = DataExecute.GetDataSet(query).Tables[0];
            return dt;
        }

        public DataTable GetVehiclesRegistrationNumber()
        {

            string query = "SELECT [RegNo] FROM [AMS_DB].[dbo].[Vehicle_Registration]";
            dt = DataExecute.GetDataSet(query).Tables[0];
            return dt;
        }
        public void InsertVehiclesFitnessInformation(int option, string Code, string RegNo, string ChesisNo, string EngineNo, string Description, int Nofseats, string Cylinder, string CC, string WeightEmpty, string WeightLoad, int NumTyres, string TyreSize, string OverhangFont, string OverhangBack, string Name, string FatherName, string Address,string Tin, string FromDate, string ToDate, string ApproveDate, string VisitDate, string VisitorName, string Designation, string AreaName, string Certificatename, string CreatedBy)
        {
            string query = "[Insert_Vehicles_Fiteness_Information]'" + option + "','" + Code + "', '" + RegNo + "','" + ChesisNo + "','" + EngineNo + "','" + Description + "','" + Nofseats + "','" + Cylinder + "','" + CC + "','" + WeightEmpty + "','" + WeightLoad + "','" + NumTyres + "','" + TyreSize + "','" + OverhangFont + "','" + OverhangBack + "','" + Name + "','" + FatherName + "','" + Address + "','" + Tin + "','" + FromDate + "','" + ToDate + "','" + ApproveDate + "','" + VisitDate + "','" + VisitorName + "','" + Designation + "','" + AreaName + "','" + Certificatename + "','" + CreatedBy + "'";
            DataExecute.GetDataSet(query);
        }
    }
}