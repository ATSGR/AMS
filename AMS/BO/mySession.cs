using System;
using System.Web;

namespace AMS.VMS.BO
{
    public class mySession
    {
        public mySession()
        {
            //
            // TODO: Add constructor logic here
            //
        }

        public string Username
        {
            get;
            set;
        }

        public string logDeptId
        {
            get;
            set;
        }



        public string rptName
        {
            get;
            set;
        }
        public string RptName
        {
            get;
            set;
        }

        public string regNo
        {
            get;
            set;
        }




        public DateTime MyDate
        {
            get;
            set;
        }
        public string MyDateInString
        {
            get;
            set;
        }
        public string Uid
        {
            get;
            set;
        }
        public string DeptId
        {
            get;
            set;
        }
       
      
        public string DeptName
        {
            get;
            set;
        }
      
        public string url
        {
            get;
            set;
        }

       
     

        public string VregNo
        {
            get;
            set;
        }



        public string GetMultipleSelectedEmpId
        {
            get;
            set;
        }

        public mySession curent
        {
            get
            {
                mySession session = (mySession)HttpContext.Current.Session["__MySession__"];
                if (session == null)
                {
                    session = new mySession();
                    HttpContext.Current.Session["__MySession__"] = session;
                }
                return session;
            }
        }
    }
}