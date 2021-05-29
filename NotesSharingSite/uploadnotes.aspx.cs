using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace NotesSharingSite
{
    public partial class uploadnotes : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        string emailid, uploadingdate, branch, subject, notesfile, filetype, description, status;
        protected void Button1_Click(object sender, EventArgs e)
        {
            emailid = Session["uid"].ToString();
            DateTime dateTime = DateTime.UtcNow.Date;
            uploadingdate = dateTime.ToString("dd-MM-yyyy");
            branch = DropDownList1.SelectedValue;
            subject = TextBox1.Text;
            FileUpload1.SaveAs(Server.MapPath("upload/" + FileUpload1.FileName));
            notesfile = "upload/" + FileUpload1.FileName;
            filetype = DropDownList2.SelectedValue;
            description = TextBox2.Text;
            status = "Pending";
            string query = "insert into Notes(emailid,uploadingdate,branch,subject,notesfile,filetype,description,status) values ('"+emailid+"','"+uploadingdate+"','"+branch+ "','"+subject+ "','"+notesfile+ "','"+filetype+ "','"+description+ "','"+status+"')";
            int n=Connect.my_iud(query);
            if(n==1)
            {
                string script = "<script type=\"text/javascript\">alert('Notes Uploaded Successfully');window.location='viewmynotes.aspx';</script>";
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