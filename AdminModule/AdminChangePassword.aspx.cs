using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class AdminModule_AdminChangePassword : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            MultiView1.ActiveViewIndex = 0;
        }

    }
    protected void btrecover_Click(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        Response.Redirect("DealerHomePage.aspx");
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        string str;
        str = "update login set password ='" + txtpassword.Text + "' where userid=" + Session["uid"].ToString();
        connectionclass obj = new connectionclass();
        obj.exe_Command(str);
        Response.Write("<script>alert('your password is sucessfully changed.');window.location='AdminHomePage.aspx';</script>");
    }
}