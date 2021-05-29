using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace NotesSharingSite
{
    public class mylogin
    {
        public static int checkadmin(string adminname,string password)
        {
            string query = "select count(*) from Admin where adminname='" + adminname + "' and password='" + password + "'";
            int a = Convert.ToInt16(Connect.my_one(query));
            return a;
        }

        public static int checkuser(string emailid, string password)
        {
            string query = "select count(*) from Users where emailid='" + emailid + "' and password='" + password + "'";
            int a = Convert.ToInt16(Connect.my_one(query));
            return a;
        }
    }
}