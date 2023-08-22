using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class assignment3_Default : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        Label1.Visible = false;
        Label2.Visible = false;
    }
    protected void Calendar1_SelectionChanged(object sender, EventArgs e){
    
        Label1.Visible=true;
        Label2.Visible=true;
        Label1.Text = "Today's Date: "+Calendar1.TodaysDate.ToShortDateString();
        Label2.Text = "Selected Date(mm/dd/yyyy): " + Calendar1.SelectedDate.ToShortDateString();
    }
}