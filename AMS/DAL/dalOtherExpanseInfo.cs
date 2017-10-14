using AMS.VMS.DAL;
using System.Data;
namespace AMS.Service_References.DAL
{
    public class dalOtherExpanseInfo
    {
        DataExecute objDataExecute = new DataExecute();
        DataTable dt = new DataTable();

        public void Insert_New_Other_Expanse_Info(int option, string ExpenseId, string VehicleRegistrationNo, int TotalEngineOilAmt, int TotalServiceAmt,
       string PurchaseDate, int TotalRepiarAmt, int TaxAmt, int OtherExpanceAmt, string UserInfo)
        {
            string query = "[Insert_New_Other_Expanse_Info] '" + option + "','" + ExpenseId + "','" + VehicleRegistrationNo + "','" + TotalEngineOilAmt + "','"
             + TotalServiceAmt + "','" + PurchaseDate + "','" + TotalRepiarAmt + "','" + TaxAmt + "','" + OtherExpanceAmt + "','" + UserInfo + "'";
            DataExecute.GetDataSet(query);
        }

        public DataTable GetAllExpanseInfo(int option, string ExpenseId)
        {

            string query = "[Get_Other_Expanse_Info] '" + option + "' , '" + ExpenseId + "'";
            dt = DataExecute.GetDataSet(query).Tables[0];
            return dt;
        }

        public DataTable GetvehiclesRegistration()
        {
            string query = " SELECT [RegNo] FROM [AMS_DB].[dbo].[Vehicle_Registration] ";
            dt = DataExecute.GetDataSet(query).Tables[0];
            return dt;
        }
        public DataTable GetExpenseId()
        {
            string query = "SELECT  isnull(MAX(ExpenseId),0)+1 as CountId FROM Other_Expanse_Info";
            dt = DataExecute.GetDataSet(query).Tables[0];
            return dt;
        }

        public DataTable Get_Expance(string expenseId)
        {
            string query = " SELECT ExpenseId, VehicleRegistrationNo, TotalEngineOilAmt, TotalServiceAmt, convert(varchar(10),[PurchaseDate],121) as PurchaseDate, TotalRepiarAmt, TaxAmt, OtherExpanceAmt FROM Other_Expanse_Info where ExpenseId='" + expenseId + "'";
            dt = DataExecute.GetDataSet(query).Tables[0];
            return dt;

        }

    }
}

