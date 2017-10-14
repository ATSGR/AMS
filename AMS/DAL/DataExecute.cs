using System;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
namespace AMS.VMS.DAL
{
    public class DataExecute
    {
        static string constring = ConfigurationManager.ConnectionStrings["conStringAms"].ToString();
        static SqlConnection sqlcon = null;
        static SqlCommand sqlcom = null;
        static SqlDataAdapter sqladp = null;
        static DataSet ds = null;
        SqlTransaction trans;


        public static DataSet GetDataSet(string query)
        {
            SqlTransaction sqlTrans = null;
            //string query = string.Empty;
            try
            {
                sqlcon = new SqlConnection(constring);
                sqlcon.Open();
                //SqlTransaction trans;
                sqlTrans = sqlcon.BeginTransaction();


                sqlcom = new SqlCommand(query, sqlcon);
                sqlcom.Transaction = sqlTrans;
                try
                {
                    sqlcom.CommandTimeout = 0;
                    sqladp = new SqlDataAdapter();
                    sqladp.SelectCommand = sqlcom;
                    ds = new DataSet();
                    sqladp.Fill(ds);
                    sqlTrans.Commit();

                }
                catch (Exception ex)
                {

                   // MessageBox.Show("There is a technical error.");
                    //throw ex;
                }
            }
            //catch (Exception ex)
            //{
            //    throw ex;
            //}
            finally
            {
                //ds = null;
                sqladp = null;
                sqlcom = null;
                sqlcon.Close();
                sqlcon = null;
            }
            return ds;
        }
        public static void ExecuteNonQuery(string query)
        {
            try
            {
                sqlcon = new SqlConnection(constring);
                sqlcon.Open();
                sqlcom = new SqlCommand(query, sqlcon);
                sqlcom.CommandTimeout = 0;
                sqlcom.ExecuteNonQuery();
            }
            catch (Exception ex)
            {
                throw ex;
            }
            finally
            {
                sqlcom = null;
                query = null;
                sqlcon.Close();
                sqlcon = null;

            }
        }
        public static void ExecuteNonQuery(DataTable dt)
        {
            SqlTransaction sqlTrans = null;
            string query = string.Empty;
            try
            {
                int n = dt.Rows.Count;
                sqlcon = new SqlConnection(constring);
                sqlcon.Open();
                sqlcom = new SqlCommand();
                sqlcom.Connection = sqlcon;
                sqlTrans = sqlcon.BeginTransaction();
                sqlcom.Transaction = sqlTrans;
                sqlcom.CommandTimeout = 0;

                for (int i = 0; i < n; i++)
                {
                    query = dt.Rows[i]["Query"].ToString();
                    sqlcom.CommandText = query;
                    sqlcom.ExecuteNonQuery();

                }
                sqlTrans.Commit();


            }
            catch (Exception ex)
            {
                sqlTrans.Rollback();
                throw ex;

            }
            finally
            {

                sqlcom = null;
                query = null;
                sqlTrans = null;
                sqlcon.Close();
                sqlcon = null;

            }
        }

        public static object ExecuteScalar(string query)
        {
            object counter = null;
            try
            {
                sqlcon = new SqlConnection(constring);
                sqlcon.Open();
                sqlcom = new SqlCommand(query, sqlcon);
                sqlcom.CommandTimeout = 0;
                counter = sqlcom.ExecuteScalar();
            }
            catch (Exception ex)
            {
                throw ex;
            }
            finally
            {
                sqlcom = null;
                query = null;
                sqlcon.Close();
                sqlcon = null;

            }
            return counter;
        }
        //public static void ComboboxBind(ComboBox cmbName, DataTable dt, string displayfield, string valuefield)
        //{
        //    cmbName.DataSource = dt;
        //    cmbName.DisplayMember = displayfield;
        //    cmbName.ValueMember = valuefield;

        //}

        //public static void ComboboxBindUnderGrid(DataGridViewComboBoxColumn cmbName, DataTable dt, string displayfield, string valuefield)
        //{
        //    //cmbName.
        //    //DataGridViewComboBoxColumn ComboClm = new DataGridViewComboBoxColumn();
        //    cmbName.DataSource = dt;
        //    cmbName.DisplayMember = displayfield;
        //    cmbName.ValueMember = valuefield;

        //}
    }
}