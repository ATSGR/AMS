using System;
using System.Data.SqlClient;
using System.Data;
using AMS.Service_References.DAL;
using AMS.VMS.BO;

namespace AMS.VMS.Pages
{
    public partial class Login : System.Web.UI.Page
    {
        dalLogIn objdalLogIn = new dalLogIn();
        mySession objmySession = new mySession();
        DataTable dt = new DataTable();
        protected void Page_Load(object sender, EventArgs e)
        {
            lblMessage.Visible = false;
        }

        protected void btnLogin_Click(object sender, EventArgs e)
        {

            string logName = txtUseraName.Text;
            string logPassword = txtPassword.Text;
          
            dt = objdalLogIn.Get_User(logName, logPassword);
            if(dt.Rows.Count>0)
            {         
                objmySession.curent.Username = logName;
                objmySession.curent.logDeptId = dt.Rows[0]["DeptId"].ToString();

                Response.Redirect("deafults.aspx");
            }

            else
            {

                lblMessage.Visible = true;

            }



          

            //SqlConnection conn = new SqlConnection("Data Source=MIS6-PC;Initial Catalog=AMS_DB;User ID=sa;Password=123");
            //SqlDataAdapter sda = new SqlDataAdapter("select * from UserInfo where UserName='" + txtUseraName.Text + "' and Password='" + txtPassword.Text + "' ", conn);
            //DataTable dt = new DataTable();
            //sda.Fill(dt);

            //if (dt.Rows.Count == 1)
            //{
            //    Session["UserName"] = txtUseraName.Text;
            //    Response.Redirect("deafults.aspx");
            //}
            //else
            //{

            //    lblMessage.Visible = true;
            //}





        }
    }
}