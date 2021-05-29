using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace NotesSharingSite
{
    public partial class Adminlogin : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string adminname = TextBox1.Text;
            string password = TextBox2.Text;
            int a = mylogin.checkadmin(adminname, password);
            if (a == 1)
            {
                if (CheckBox1.Checked)
                {
                    Response.Cookies["ldata"]["adminname"] = adminname;
                    Response.Cookies["ldata"]["pwd"] = password;
                    Response.Cookies["ldata"].Expires = DateTime.Now.AddYears(1);
                }
                Session["adminname"] = adminname;
                Session["pwd"] = password;
                Response.Redirect("admin/adminhome.aspx");
            }
            else
            {
                string script = "<script type=\"text/javascript\">alert('Invalide Login Credentials,Try Again');</script>";
                ClientScript.RegisterClientScriptBlock(this.GetType(), "Alert", script);
            }
        }
    }
}