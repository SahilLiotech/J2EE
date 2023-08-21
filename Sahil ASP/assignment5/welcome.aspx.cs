using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class assignment5_welcome : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        Label1.Text = ("Welcome" + " " + Session["user"]);

    }
    protected void LinkButton1_Click(object sender, EventArgs e)
    {
        Response.Redirect("product.aspx");
    }
}