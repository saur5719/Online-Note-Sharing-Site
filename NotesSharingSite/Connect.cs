using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using System.Data.SqlClient;

namespace NotesSharingSite
{
    public class Connect
    {
        public static string cstr = "Data Source=(LocalDB)\\MSSQLLocalDB;AttachDbFilename=|DataDirectory|\\Notes.mdf;Integrated Security=True";
        public static SqlConnection cn;
        public static SqlCommand cmd;
        public static SqlDataReader dr;
        public static int my_iud(string query)//insert update delete
        {
            cn = new SqlConnection(cstr);
            cmd=new SqlCommand(query, cn);
            if(cn.State==ConnectionState.Closed)
               cn.Open();
            int n = cmd.ExecuteNonQuery();
            //cn.Close();
            return n;
        }

        public static SqlDataReader my_reader(string query)//search
        {
            cn = new SqlConnection(cstr);
            cmd = new SqlCommand(query, cn);
            if (cn.State == ConnectionState.Closed)
                cn.Open();
            dr = cmd.ExecuteReader();
            //cn.Close();
            return dr;
        }

        public static object my_one(string query)//search
        {
            cn = new SqlConnection(cstr);
            cmd = new SqlCommand(query, cn);
            if (cn.State == ConnectionState.Closed)
                cn.Open();
            object n = cmd.ExecuteScalar();
            //cn.Close();
            return n;
        }
    }
}