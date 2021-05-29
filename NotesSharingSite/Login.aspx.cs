using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace NotesSharingSite
{
    public partial class Login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string emailid = TextBox1.Text;
            string password = TextBox2.Text;
            int a=mylogin.checkuser(emailid, password);
            if(a==1)
            {
                if(CheckBox1.Checked)
                {
                    Response.Cookies["ldata"]["uid"] = emailid;
                    Response.Cookies["ldata"]["pwd"] = password;
                    Response.Cookies["ldata"].Expires = DateTime.Now.AddYears(1);
                }
                Session["uid"] = emailid;
                Session["pwd"] = password;
                Response.Redirect("userhome.aspx");
            }
            else
            {
                string script = "<script type=\"text/javascript\">alert('Invalide Login Credentials,Try Again');</script>";
                ClientScript.RegisterClientScriptBlock(this.GetType(), "Alert", script);
            }
        }
    }
}