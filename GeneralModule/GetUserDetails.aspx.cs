using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class GeneralModule_GetUserDetails : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            twoweelercatalog obj = new twoweelercatalog();
            obj.getregion(ddlregion);
            obj.refreshcity(ddlcity, ddlregion);
            MultiView1.ActiveViewIndex = 0;
        }

    }
    protected void Button7_Click(object sender, EventArgs e)
    {
        //Session["product_id"] = "10";
        //Session["dealer_id"] = "20";
        string str;
        str = "insert into booking values('" + txtname.Text + "'," + ddlage.SelectedItem.ToString() + ",'" + ddlgender.SelectedItem.ToString() + "'," + txtcno.Text + ",'" + txtemailid.Text + "'," + ddlcity.SelectedValue + ",'" + txtaddress.Text + "'," + Session["product_id"].ToString() + "," + Session["dealer_id"].ToString() + ",'" + DateTime.Now.ToShortDateString() + "');";
        connectionclass obj = new connectionclass();
        obj.exe_Command(str);
        MultiView1.ActiveViewIndex = 1;
    }
    protected void Button6_Click(object sender, EventArgs e)
    {
        Response.Redirect("ProductFullDetails.aspx");
    }
    protected void ddlregion_SelectedIndexChanged(object sender, EventArgs e)
    {
        twoweelercatalog obj = new twoweelercatalog();
        obj.refreshcity(ddlcity, ddlregion);
    }
    protected void LinkButton3_Click(object sender, EventArgs e)
    {

    }
}