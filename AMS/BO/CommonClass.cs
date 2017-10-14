using System;
using System.Data;
using System.Web.UI.WebControls;

namespace AMS.VMS.BO
{
    public class CommonClass
    {
        public void myfBindMaxValueInFiveDigit(TextBox txtObj1, DataTable dt)
        {

            //dt = dalObj.projectInformationShowData();
            string CountId = "";

            int count;
            count = Convert.ToInt32(dt.Rows[0]["CountId"].ToString());
            if (count < 10)
            {
                CountId = "0000" + count.ToString();
            }
            else if (count < 100 && count >= 10)
            {
                CountId = "000" + count.ToString();
            }
            else if (count < 1000 && count >= 100)
            {
                CountId = "00" + count.ToString();
            }
            else
            {
                CountId = "0" + count.ToString();
            }


            //if (txtObj2.Text != "" && txtObj2.TextLength > 2)
            //{
            //    string countName = txtObj2.Text.Substring(0, 3).ToString();
            string MaxCountName = CountId;

            txtObj1.Text = MaxCountName;
            //}


        }
        public void myfBindMaxValueInFourDigit(TextBox txtObj1, DataTable dt)
        {

            //dt = dalObj.projectInformationShowData();
            string CountId = "";

            int count;
            count = Convert.ToInt32(dt.Rows[0]["CountId"].ToString());
            if (count < 10)
            {
                CountId = "000" + count.ToString();
            }
            else if (count < 100 && count >= 10)
            {
                CountId = "00" + count.ToString();
            }
            else if (count < 1000 && count >= 100)
            {
                CountId = "0" + count.ToString();
            }
            string MaxCountName = CountId;

            txtObj1.Text = MaxCountName;
     
        }

        //Method for Auto code for insurance company... adding by nasir

        public void MaxInsuranceCode(TextBox textboxInsuranceCode, DataTable dt)
        {
            string countId = "";
            int count;
            count = Convert.ToInt32(dt.Rows[0]["countId"].ToString());
            if (count<10)
            {
                countId = "000" + count.ToString();                
            }
            else if (count < 100 && count >= 10)
            {
                countId = "00" + count.ToString();
            }
            else if (count < 1000 && count > 100)
            {
                countId = "0" + count.ToString();
            }
            string maxInsCode = countId;
            textboxInsuranceCode.Text = maxInsCode;
        }

    }
}