using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace NotesSharingSite.admin
{
    public partial class assignstatus : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string id = Request.QueryString["id"];
            string status = DropDownList1.SelectedValue.ToString();
            string query="update Notes set status='"+status+"' where id="+id+"";
            int n=Connect.my_iud(query);
            if (n == 1)
            {
                string script = "<script type=\"text/javascript\">alert('Status Update Successfull');window.location='viewnotes.aspx';</script>";
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