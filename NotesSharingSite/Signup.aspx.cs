using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace NotesSharingSite
{
    public partial class Signup : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        string username, password, emailid, contact, branch, role, securityq, securitya;
        protected void Button1_Click(object sender, EventArgs e)
        {
            username = TextBox1.Text;
            password = TextBox2.Text;
            emailid = TextBox3.Text;
            contact = TextBox4.Text;
            branch = DropDownList1.SelectedValue;
            role = DropDownList2.SelectedValue;
            securityq = DropDownList3.SelectedValue;
            securitya = TextBox5.Text;
            string query = "insert into Users values('"+username+"','"+password+"','"+emailid+"','"+contact+"','"+branch+"','"+role+"','"+securityq+"','"+securitya+"')";
            int n=Connect.my_iud(query);
            if(n==1)
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
    }
}