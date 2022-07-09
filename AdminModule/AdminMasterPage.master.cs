using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class AdminModule_AdminMasterPage : System.Web.UI.MasterPage
{
    protected void Page_Load(object sender, EventArgs e)
    {

        if (Session["uid"] == null || Session["usertype"].ToString().ToLower() != "admin")
        {
            Session["uid"] = null;
            Session["usertype"] = null;

            Response.Redirect("../GeneralModule/Login.aspx");

        }
    }
    protected void LinkButton4_Click(object sender, EventArgs e)
    {
        Session["uid"] = null;
        Response.Redirect("../GeneralModule/Default.aspx");
    }
    protected void LinkButton1_Click(object sender, EventArgs e)
    {
        Response.Redirect("SpecialDeals.aspx");

    }
    protected void LinkButton2_Click(object sender, EventArgs e)
    {
        Response.Redirect("EditAbout.aspx");


    }
    protected void LinkButton3_Click(object sender, EventArgs e)
    {
        Response.Redirect("EditContact.aspx");

    }
}
