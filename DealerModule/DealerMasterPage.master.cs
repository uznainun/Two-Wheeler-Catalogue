using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class DealerModule_DealerMasterPage : System.Web.UI.MasterPage
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["uid"] == null || Session["usertype"].ToString().ToLower() != "dealer")
        {
            Session["uid"] = null;
            Session["usertype"] = null;

            Response.Redirect("../GeneralModule/Login.aspx");
        }
    }
    //protected void LinkButton1_Click(object sender, EventArgs e)
    //{
    //    string str;
    //    str = "insert into admin_newsletter values('" + txtnewletter.Text + "')";
    //    connectionclass obj = new connectionclass();
    //    obj.exe_Command(str);

    //}

    protected void LinkButton2_Click(object sender, EventArgs e)
    {
        Session["uid"] = null;
        Session["usertype"] = null;
        Response.Redirect("../GeneralModule/Default.aspx");
    }
}
