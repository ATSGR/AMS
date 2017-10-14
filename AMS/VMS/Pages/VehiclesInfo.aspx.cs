using AMS.VMS.BO;
using AMS.VMS.DAL;
using System;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.EnterpriseServices;
using System.IO;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace AMS.VMS.Pages
{
    public partial class VehiclesInfo : System.Web.UI.Page
    {
        dalVehicleInformation objdalVehicleInformation = new dalVehicleInformation();
        CommonClass objCommonClass = new CommonClass();
        mySession objSession = new mySession();
        DataTable dt = new DataTable();
        int option = 1;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (objSession.curent.Username!=null)
            {

                if (!IsPostBack)
                {
                    BindDepartment();
                    BindMax();
                    BindVehicleChassisNo();
                    BinddEPARTMENT();
                    BindVehicleRegistration();
                    ddlVehicleRegNo.Items.Add(new ListItem("Select", "0", true));
                   
                    //DropDownList1.Items.Add(new ListItem("Select", "0", true))
                    
                    //BindRegistrationTogrid();
                }
            }

            else
            {
                Response.Redirect("Login.aspx");

            }


           
        }


        private void BindDepartment()
        {
            dt = objdalVehicleInformation.GetVendor();
            ddlVendor.DataSource = dt;
            ddlVendor.DataBind();

            ddlVendor.DataTextField = "VendorNm";

            ddlVendor.DataValueField = "VendorId";
            ddlVendor.DataBind();

        }
        private void BindMax()
        {
            dt=objdalVehicleInformation.GetMaxVehicleId();
            objCommonClass.myfBindMaxValueInFourDigit(txtVehicleID, dt);
        }

        protected void btnSave_Click(object sender, EventArgs e)
        {
            option = 1;
            AccessVehicleInformation();
            string message = "Data have been Saved successfully.";
            string script = "window.onload = function(){ alert('";
            script += message;
            script += "')};";
            ClientScript.RegisterStartupScript(this.GetType(), "SuccessMessage", script, true);
            refresh();
        }


        private void BindRegistrationTogrid()
        {
            grdVehicleRegistration.DataSource =objdalVehicleInformation.GetVehicleRegistration();
            grdVehicleRegistration.DataBind();
        }


        private void BindVehicleChassisNo()
        {
            dt =objdalVehicleInformation.VehicleId();
            ddlVehicleId.DataSource = dt;
            ddlVehicleId.DataBind();

            ddlVehicleId.DataTextField = "ChassisNo";

            ddlVehicleId.DataValueField = "ChassisNo";
            ddlVehicleId.DataBind();

        }

        // bind vehicle registraion number in insurance form


        private void BindVehicleRegistration()
        {
            
            dt = objdalVehicleInformation.GetVehicleRegistrationNumber();          
            ddlVehicleRegNo.DataSource = dt;          
            ddlVehicleRegNo.DataTextField = "RegNo";
            ddlVehicleRegNo.DataValueField = "regNo";
            ddlVehicleRegNo.DataBind();

           

        }


        private void BinddEPARTMENT()
        {
            dt = objdalVehicleInformation.GetDepotName();
            ddlDepartment.DataSource = dt;
            ddlDepartment.DataBind();

            ddlDepartment.DataTextField = "deptName";

            ddlDepartment.DataValueField = "deptName";
            ddlDepartment.DataBind();

        }

        private DataTable GetData(SqlCommand cmd)
        {

            DataTable dt = new DataTable();

            String strConnString = System.Configuration.ConfigurationManager

            .ConnectionStrings["conStringAms"].ConnectionString;

            SqlConnection con = new SqlConnection(strConnString);

            SqlDataAdapter sda = new SqlDataAdapter();

            cmd.CommandType = CommandType.Text;

            cmd.Connection = con;

            try
            {

                con.Open();

                sda.SelectCommand = cmd;

                sda.Fill(dt);

                return dt;

            }

            catch
            {

                return null;

            }

            finally
            {

                con.Close();

                sda.Dispose();

                con.Dispose();

            }

        }
        private void download(DataTable dt)
        {

            Byte[] bytes = (Byte[])dt.Rows[0]["RegDocFile"];

            Response.Buffer = true;

            Response.Charset = "";

            Response.Cache.SetCacheability(HttpCacheability.NoCache);

            Response.ContentType = "pdf";

            //Response.AddHeader("content-disposition", "attachment;filename="

            //+ dt.Rows[0]["RegNo"].ToString());
            string reg=dt.Rows[0]["RegNo"].ToString();


            Response.AddHeader("content-disposition", "attachment;filename="

          + "'"+reg+"'.pdf");

            Response.BinaryWrite(bytes);

            Response.Flush();

            Response.End();

        }
        

        protected void btnlink(object sender, EventArgs e)
        { 
            int i = 0;
            GridViewRow grdrow = (GridViewRow)(sender as Control).Parent.Parent;
            int RowIndex = grdrow.RowIndex;
            txtVehicleID.Text = grdVehicleRegistration.Rows[RowIndex].Cells[0].Text;
            txtRegistration.Text = grdVehicleRegistration.Rows[RowIndex].Cells[1].Text;
            txtDateRegistration.Text = grdVehicleRegistration.Rows[RowIndex].Cells[2].Text;
            txtLicenseNo.Text = grdVehicleRegistration.Rows[RowIndex].Cells[3].Text;
            txtLicExpired.Text = grdVehicleRegistration.Rows[RowIndex].Cells[4].Text;
          
           txtRegisteredTo.Text = grdVehicleRegistration.Rows[RowIndex].Cells[5].Text;
           txtAddress.Text = grdVehicleRegistration.Rows[RowIndex].Cells[6].Text;
           txtEmail.Text = grdVehicleRegistration.Rows[RowIndex].Cells[7].Text;
           txtContact.Text = grdVehicleRegistration.Rows[RowIndex].Cells[8].Text;
          
            //btnUpdate.Enabled = true;
        }

        protected void btnDownload(object sender, EventArgs e)
        {
            int i = 0;
            GridViewRow grdrow = (GridViewRow)(sender as Control).Parent.Parent;
            int RowIndex = grdrow.RowIndex;
            string vid = grdVehicleRegistration.Rows[RowIndex].Cells[0].Text;
            string strQuery = "SELECT     VId, RegNo, RegDocFile FROM         Vehicle_Registration where VId=@vid";
            
            SqlCommand cmd = new SqlCommand(strQuery);
            cmd.Parameters.Add("@vid", SqlDbType.Int).Value = vid;
            DataTable dt = GetData(cmd);
            if (dt != null)
            {
                download(dt);
            }
        }




        protected void btnSave1_Click(object sender, EventArgs e)
        {
            option = 1;
            AccessVehicleREgistration();
            BindVehicleChassisNo();
        }


        protected void btnUpdate1_Click(object sender, EventArgs e)
        {
            string filename = Path.GetFileName(FileUpload1.PostedFile.FileName);
            string extension = Path.GetExtension(filename);
            string contentType = FileUpload1.PostedFile.ContentType;
            HttpPostedFile file = FileUpload1.PostedFile;
            byte[] document = new byte[file.ContentLength];
            file.InputStream.Read(document, 0, file.ContentLength);

            string vid = ddlVehicleId.Text;
            string RegNo = txtRegistration.Text;
            string RegDate = txtDateRegistration.Text;
            string LiCNo = txtLicenseNo.Text;
            string LicenseExDate = txtLicExpired.Text;
            string RegTo = txtRegisteredTo.Text;
            string Address = txtAddress.Text;
            string Email = txtEmail.Text;
            string ContactNo = txtContact.Text;
            //VarBinary RegDocFile = document;
            //byte[] RegDocFile =document;
            string UserId = "HR";
            //objdalVehicleInformation.Insert_Registration_info(option, vid, RegNo, RegDate, LiCNo, LicenseExDate, RegTo, Address, Email, ContactNo, document, UserId);
            if (file.ContentLength <= 31457280)//size  
            {
            }

            string constring = ConfigurationManager.ConnectionStrings["conStringAms"].ToString();
            using (SqlConnection con = new SqlConnection(constring))
            {
                con.Open();
                SqlCommand cmd = new SqlCommand();
                cmd.Connection = con;
                string commandText = @"UPDATE    Vehicle_Registration SET  RegNo = @RegNo, RegDate = @RegDate, LiCNo = @LiCNo,   LicenseExDate = @LicenseExDate, "
                                + "     RegTo = @RegTo, Address = @Address, Email = @Email, ContactNo = @ContactNo, RegDocFile = @FileData where vid = @vid";
                cmd.CommandText = commandText;
                cmd.CommandType = CommandType.Text;
                cmd.Parameters.Add("@vid", SqlDbType.VarChar);
                cmd.Parameters["@vid"].Value = vid;
                cmd.Parameters.Add("@RegNo", SqlDbType.VarChar);
                cmd.Parameters["@RegNo"].Value = RegNo;

                cmd.Parameters.Add("@LiCNo", SqlDbType.VarChar);
                cmd.Parameters["@LiCNo"].Value = LiCNo;

                cmd.Parameters.Add("@RegDate", SqlDbType.VarChar);
                cmd.Parameters["@RegDate"].Value = RegDate;

                cmd.Parameters.Add("@LicenseExDate", SqlDbType.VarChar);
                cmd.Parameters["@LicenseExDate"].Value = LicenseExDate;

                cmd.Parameters.Add("@RegTo", SqlDbType.VarChar);
                cmd.Parameters["@RegTo"].Value = RegTo;

                cmd.Parameters.Add("@Address", SqlDbType.VarChar);
                cmd.Parameters["@Address"].Value = Address;


                cmd.Parameters.Add("@Email", SqlDbType.VarChar);
                cmd.Parameters["@Email"].Value = Email;

                cmd.Parameters.Add("@ContactNo", SqlDbType.VarChar);
                cmd.Parameters["@ContactNo"].Value = ContactNo;



                cmd.Parameters.Add("@FileData", SqlDbType.VarBinary);
                cmd.Parameters["@FileData"].Value = document;

                cmd.Parameters.Add("@UserId", SqlDbType.VarChar);
                cmd.Parameters["@UserId"].Value = UserId;
                cmd.ExecuteNonQuery();
                cmd.Dispose();
                con.Close();
            }

        }
        private void AccessVehicleInformation()
        {
            string vid = txtVehicleID.Text;
            string VNo = txtVhNo.Text;
            string ModelNo = txtModelName.Text;
            string ModelYear = txtModelYear.Text;
            string ChassisNo = txtChassisno.Text;
            string BrandName = txtBrand.Text;
            string Vtype = txtVehicletype.Text;
            string BodyType = txtBodytype.Text;
            string BodyColor = txtBodyColor.Text;
            string TireSize = txtTireSize.Text;
            string FuelType = ddlFuelType.Text;// txtFueltype.Text;
            string PuchaseDate = txtdtPurchase.Text;
            string SeatingCapacity = txtSeatingCapa.Text;
            Decimal Price = Convert.ToDecimal(txtPrice.Text);
            string Waranty = txtWaranty.Text;
            string CylinderSize = txtCylQty.Text;
            int indexOfDeptCd = ddlDepartment.Text.IndexOf('[') + 1;
            string depot = ddlDepartment.Text.Substring(indexOfDeptCd, 2).ToString();
            //string depot = txtDepartment.Text; 
            string vendorId = ddlVendor.Text;
            string UserId = "";
            objdalVehicleInformation.Insert_Vehicle_info(option, vid, VNo, ModelNo, ModelYear, ChassisNo, BrandName, Vtype, BodyType, BodyColor, TireSize, FuelType, PuchaseDate,  SeatingCapacity, Price, Waranty, CylinderSize, depot, vendorId, UserId);

        }

        //refresh method by Nasir for vehicles information

        private void refresh()
        {
            txtVhNo.Text = "";
            txtdtPurchase.Text = "";
            txtWaranty.Text = "";
            txtChassisno.Text = "";
            txtPrice.Text = "";
            txtModelName.Text = "";
            txtVehicletype.Text = "";
            txtModelYear.Text = "";
            txtBrand.Text = "";
            txtBodytype.Text = "";
            txtBodyColor.Text = "";
            txtTireSize.Text = "";
            txtSeatingCapa.Text = "";
            txtCylQty.Text = "";
            BindMax();
        }



        // }




        private void AccessVehicleREgistration()
        {
            //if (!FileUpload1.HasFile)
            //{
            //    Response.Write("No file Selected"); return;
            //}
            //else
            //{
                string filename = Path.GetFileName(FileUpload1.PostedFile.FileName);
                string extension = Path.GetExtension(filename);
                string contentType = FileUpload1.PostedFile.ContentType;
                HttpPostedFile file = FileUpload1.PostedFile;
                byte[] document = new byte[file.ContentLength];
                file.InputStream.Read(document, 0, file.ContentLength);

                 string vid = ddlVehicleId.Text;
                string RegNo = txtRegistration.Text;
                string RegDate = txtDateRegistration.Text;
                string LiCNo = txtLicenseNo.Text;
                string LicenseExDate = txtLicExpired.Text;
                string RegTo = txtRegisteredTo.Text;
                string Address = txtAddress.Text;
                string Email = txtEmail.Text;
                string ContactNo = txtContact.Text;
                //VarBinary RegDocFile = document;
                 //byte[] RegDocFile =document;
                string UserId = "HR";
                //objdalVehicleInformation.Insert_Registration_info(option, vid, RegNo, RegDate, LiCNo, LicenseExDate, RegTo, Address, Email, ContactNo, document, UserId);
                if (file.ContentLength <= 31457280)//size  
                {
                }

                string constring = ConfigurationManager.ConnectionStrings["conStringAms"].ToString();
                using (SqlConnection con = new SqlConnection(constring))

                {                                   
                    con.Open();
                    SqlCommand cmd = new SqlCommand();
                    cmd.Connection = con;

                    string commandText = @"INSERT INTO [AMS_DB].[dbo].[Vehicle_Registration]([ChasisNo],[RegNo],[RegDate],[LiCNo],[LicenseExDate],[RegTo],[Address],[Email],[ContactNo],[RegDocFile],[uerId],[entryDate]) "
                                         + " VALUES(@ChasisNo, @RegNo, @RegDate,@LiCNo,@LicenseExDate,@RegTo ,@Address,@Email, @ContactNo,@FileData ,@UserId,Getdate())";    



                    //string commandText = @"INSERT INTO [AMS_DB].[dbo].[Vehicle_Registration]([VId],[RegNo],[RegDate],[LiCNo],[LicenseExDate],[RegTo],[Address],[Email],[ContactNo],[uerId],[entryDate]) "
                    //                     + " VALUES(@vid, @RegNo, @RegDate,@LiCNo,@LicenseExDate,@RegTo ,@Address,@Email, @ContactNo ,@UserId,Getdate())";   

                    cmd.CommandText = commandText;
                    cmd.CommandType = CommandType.Text;
                    cmd.Parameters.Add("@ChasisNo", SqlDbType.VarChar);
                    cmd.Parameters["@ChasisNo"].Value = vid;
                    cmd.Parameters.Add("@RegNo", SqlDbType.VarChar);
                    cmd.Parameters["@RegNo"].Value =RegNo;

                    cmd.Parameters.Add("@LiCNo", SqlDbType.VarChar);
                    cmd.Parameters["@LiCNo"].Value = LiCNo;

                    cmd.Parameters.Add("@RegDate", SqlDbType.VarChar);
                    cmd.Parameters["@RegDate"].Value = RegDate;

                    cmd.Parameters.Add("@LicenseExDate", SqlDbType.VarChar);
                    cmd.Parameters["@LicenseExDate"].Value = LicenseExDate;

                    cmd.Parameters.Add("@RegTo", SqlDbType.VarChar);
                    cmd.Parameters["@RegTo"].Value = RegTo;

                    cmd.Parameters.Add("@Address", SqlDbType.VarChar);
                    cmd.Parameters["@Address"].Value = Address;


                    cmd.Parameters.Add("@Email", SqlDbType.VarChar);
                    cmd.Parameters["@Email"].Value = Email;

                    cmd.Parameters.Add("@ContactNo", SqlDbType.VarChar);
                    cmd.Parameters["@ContactNo"].Value = Address;



                    cmd.Parameters.Add("@FileData", SqlDbType.VarBinary);
                    cmd.Parameters["@FileData"].Value = document;

                    cmd.Parameters.Add("@UserId", SqlDbType.VarChar);
                    cmd.Parameters["@UserId"].Value = UserId;
                    cmd.ExecuteNonQuery();
                    cmd.Dispose();
                    con.Close();
                   
                }

        }
    }
}