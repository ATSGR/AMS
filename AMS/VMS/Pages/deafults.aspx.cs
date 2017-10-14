using AMS.VMS.BO;
using System;
namespace AMS.VMS.Pages
{
    public partial class deafults : System.Web.UI.Page
    {
        mySession objmySession = new mySession();
        protected void Page_Load(object sender, EventArgs e)
        {

            //if (Session["UserName"] != null)
            //{
            //    lblWlcmome.Text = Session["UserName"].ToString();

            //}

            //else
            //{
            //    Response.Redirect("Login.aspx");
                
            //}

            lblWlcmome.Text = objmySession.curent.Username;
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Response.Redirect("Login.aspx");
        }
    }
}