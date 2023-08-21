using System;
using System.Collections.Generic;
using System.Linq;
using System.IO;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Student_student : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        Label8.Visible = false;
        GridView1.Visible = false;
        string connectionString = ConfigurationManager.ConnectionStrings["MyConnectionString"].ConnectionString;
        SqlConnection con = new SqlConnection(connectionString);
        con.Open();
        SqlDataAdapter da = new SqlDataAdapter("SELECT * FROM student",con);
        DataTable dt = new DataTable();
        da.Fill(dt);
        GridView1.DataSource = dt;
        GridView1.DataBind();
        con.Close();
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        string fname = textbox1.Text;
        string lname = textbox2.Text;
        string gender = Drop1.SelectedValue;
        string studentClass = Drop2.SelectedValue;
        string mobile = textbox3.Text;
        string email = textbox4.Text;

        if (!fileupload1.HasFile)
        {
            Label8.Visible = true;
            return;
        }

        string imageName = Path.GetFileName(fileupload1.FileName);
        string imagePath = Path.Combine(Server.MapPath("~/img/"), imageName);
        fileupload1.SaveAs(imagePath);


        string connectionString = ConfigurationManager.ConnectionStrings["MyConnectionString"].ConnectionString;

        string sql = "INSERT INTO Student (Firstname, Lastname, Gender, Class, Mobile, Email, [File]) VALUES (@fname, @lname, @gender, @studentClass, @mobile, @email, @img)";
        SqlConnection con = new SqlConnection(connectionString);
        SqlCommand command = new SqlCommand(sql, con);

        con.Open();

        command.Parameters.AddWithValue("@fname", fname);
        command.Parameters.AddWithValue("@lname", lname);
        command.Parameters.AddWithValue("@gender", gender);
        command.Parameters.AddWithValue("@studentClass", studentClass);
        command.Parameters.AddWithValue("@mobile", mobile);
        command.Parameters.AddWithValue("@email", email);
        command.Parameters.AddWithValue("@img", "~/img/" + imageName);

        int k=command.ExecuteNonQuery();

        if (k>0)
        {
            Response.Write("<script> alert('Record inserted Successfully')</script>");
        }
        else
        {
            Response.Write("<script> alert('Record Not inserted')</script>");
        }
    }
    
    protected void Button5_Click(object sender, EventArgs e)
    {
        textbox1.Text=textbox2.Text =textbox3.Text =textbox4.Text = ""; 
        Drop1.ClearSelection();
        Drop2.ClearSelection();
        Image2.Visible = false;
    }
    protected void Button4_Click(object sender, EventArgs e)
    {
        GridView1.Visible = true;
    }
    protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
    {
        GridViewRow row = GridView1.SelectedRow; 
        Label lblfname = (Label)row.FindControl("label10");
        Label lbllname = (Label)row.FindControl("label11"); 
        Label lblgender = (Label)row.FindControl("label12"); 
        Label lblclass = (Label)row.FindControl("label13");
        Label lblmobile = (Label)row.FindControl("label14");
        Label lblemail = (Label)row.FindControl("label15"); 
        System.Web.UI.WebControls.Image img = (System.Web.UI.WebControls.Image)row.FindControl("Image1");


        textbox1.Text = lblfname.Text;
        textbox2.Text = lbllname.Text;
        Drop1.SelectedValue = lblgender.Text; 
        Drop2.SelectedValue = lblclass.Text; 
        textbox3.Text = lblmobile.Text;
        textbox4.Text = lblemail.Text;
        Image2.ImageUrl = img.ImageUrl;
        Image2.Visible = true;
    }
    protected void GridView1_RowDataBound(object sender, GridViewRowEventArgs e)
    {
        if (e.Row.RowType == DataControlRowType.DataRow)
        {
            if (e.Row.RowIndex % 2 == 0)
            {
                e.Row.CssClass = "odd";
            }
            else
            {
                e.Row.CssClass = "even";
            }
        }
    }

    protected void Button2_Click(object sender, EventArgs e)
    {
        string imageName = Path.GetFileName(fileupload1.FileName);
        string imagePath = Path.Combine(Server.MapPath("~/img/"), imageName);
      // Image2.ImageUrl = img.ImageUrl.Tostring;
    }
}