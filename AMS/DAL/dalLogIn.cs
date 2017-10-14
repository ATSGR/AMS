using AMS.VMS.DAL;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;

namespace AMS.Service_References.DAL
{
    public class dalLogIn
    {
        DataExecute objDataExecute = new DataExecute();
        DataTable dt = new DataTable();
        public DataTable Get_User(string logName, string logPassword)
        {
            string query = "SELECT     UserInfo.UserName, UserInfo.Password, UserInfo.PerId, User_Permission.PermissionName, UserInfo.DeptId "
                           + " FROM         UserInfo INNER JOIN   User_Permission ON UserInfo.PerId = User_Permission.PermissionId where UserInfo.UserName='" + logName + "' and UserInfo.Password='" + logPassword + "'";
            //DataExecute.GetDataSet(query);
            dt = DataExecute.GetDataSet(query).Tables[0];
            return dt;
            
        }

    }
}