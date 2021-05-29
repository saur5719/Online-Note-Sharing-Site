using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace NotesSharingSite
{
    public partial class changepassword : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string emailid = Session["uid"].ToString();
            string oldpassword = TextBox1.Text;
            string newpassword = TextBox2.Text;
            string confirmpassword = TextBox3.Text;
            if(newpassword.Equals(confirmpassword))
            {
                string query = "update Users set password='" + newpassword + "' where emailid='" + emailid + "' and password='" + oldpassword + "'";
                int n=Connect.my_iud(query);
                if (n == 1)
                {
                    string script = "<script type=\"text/javascript\">alert('SignUp Successfull');window.location='login.aspx';</script>";
                    ClientScript.RegisterClientScriptBlock(this.GetType(), "Alert", script);
                }
                else
                {
                    string script = "<script type=\"text/javascript\">alert('Something Went Wrong,Try Again');</script>";
                    ClientScript.RegisterClientScriptBlock(this.GetType(), "Alert", script);
                }
            }
            else
            {
                string script = "<script type=\"text/javascript\">alert('New Password & Confirm Password Not Match');</script>";
                ClientScript.RegisterClientScriptBlock(this.GetType(), "Alert", script);
            }
        }
    }
}