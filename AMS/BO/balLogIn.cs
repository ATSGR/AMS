using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Web;

namespace AMS.VMS.BO
{
    public class balLogIn
    {
        private string decriptdata(string strencriptdata)
        {
            string decriptpwd = string.Empty;
            UTF8Encoding encodepwd = new UTF8Encoding();
            Decoder Decode = encodepwd.GetDecoder();
            byte[] todecode_byte = Convert.FromBase64String(strencriptdata);
            int charCount = Decode.GetCharCount(todecode_byte, 0, todecode_byte.Length);
            char[] decoded_char = new char[charCount];
            Decode.GetChars(todecode_byte, 0, todecode_byte.Length, decoded_char, 0);
            decriptpwd = new String(decoded_char);
            return decriptpwd;
        }

        private string Encriptdata(string password)
        {
            string strmsg = string.Empty;
            byte[] newcode = new byte[password.Length];
            newcode = Encoding.UTF8.GetBytes(password);
            strmsg = Convert.ToBase64String(newcode);
            return strmsg;
        }

       


    }
}