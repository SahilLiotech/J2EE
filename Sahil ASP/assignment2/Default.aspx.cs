using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.IO;
using System.Web.UI.WebControls;

public partial class assignment2_Default : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        Label1.Visible = false;
        Label2.Visible = false;
        Label3.Visible = false;
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        if (FileUpload1.HasFile)
        {
            try
            {
                string str = Path.GetFileName(FileUpload1.FileName);
                FileUpload1.SaveAs(Server.MapPath("~\\assignment2\\photos\\" + str));

                Label1.Visible = true;
                Label2.Visible = true;
                Label3.Visible = true;

                Label1.Text = "File uploded successfully";
                Label2.Text = "File Name: " + FileUpload1.PostedFile.FileName;
                Label3.Text = "File Type: " + FileUpload1.PostedFile.ContentType;
            }
            catch (Exception)
            {
                
     
            }
        }

        else
        {
            Label1.Text = "please select the file";
        }
    }
}