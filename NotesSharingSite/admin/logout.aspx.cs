using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace NotesSharingSite.admin
{
    public partial class logout : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Session.RemoveAll();
            if (Request.Cookies["ldata"] != null)
            {
                Response.Cookies["ldata"]["adminname"] = null;
                Response.Cookies["ldata"]["pwd"] = null;
                Response.Cookies["ldata"].Expires = DateTime.Now.AddYears(-1);
            }
            Response.Redirect("../Adminlogin.aspx");
        }
    }
}