using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class AdminModule_AdminSearchDealer : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            MultiView1.ActiveViewIndex = 0;
        }

    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        string str;
        str = "select dealerregistration.d_id,dealerregistration.s_name,dealerregistration.d_name,dealerregistration.d_age,dealerregistration.d_gender,dealerregistration.d_contact,dealerregistration.d_pincode,region.region,city.city,dealerregistration.d_address from dealerregistration,city,region where dealerregistration.d_cityid=city.c_id and city.r_id=region.r_id and dealerregistration.d_id=" + txtsearchbyid.Text;
        connectionclass obj = new connectionclass();
        obj.groupdata(str);
        GridView1.DataSource = obj.ds.Tables["temptable"];
        GridView1.DataBind();
        if (GridView1.Rows.Count == 0)
        {
            Response.Write("<script>alert('no such item found');</script>");
            txtsearchbyid.Text = "";
            txtsearchbyid.Focus();
            MultiView1.ActiveViewIndex = 1;

        }
        else
        {
            MultiView1.ActiveViewIndex = 2;
        }
    }
    protected void LinkButton2_Click(object sender, EventArgs e)
    {
        txtsearchbyid.Text = "";
        txtsearchbyid.Focus();
        MultiView1.ActiveViewIndex = 1;
    }


    protected void LinkButton1_Click(object sender, EventArgs e)
    {
        txtsearchbyname.Text = "";
        txtsearchbyname.Focus();
        MultiView1.ActiveViewIndex = 3;
    }

    protected void Button8_Click(object sender, EventArgs e)
    {
        string str;
        str = "select dealerregistration.d_id,dealerregistration.s_name,dealerregistration.d_name,dealerregistration.d_age,dealerregistration.d_gender,dealerregistration.d_contact,dealerregistration.d_pincode,region.region,city.city,dealerregistration.d_address from dealerregistration,city,region where dealerregistration.d_cityid=city.c_id and city.r_id=region.r_id and dealerregistration.d_name like('%" + txtsearchbyname.Text + "%');";
        connectionclass obj = new connectionclass();
        obj.groupdata(str);
        GridView2.DataSource = obj.ds.Tables["temptable"];
        GridView2.DataBind();
        if (GridView2.Rows.Count == 0)
        {
            Response.Write("<script>alert('no such item found');</script>");
            txtsearchbyname.Text = "";
            txtsearchbyname.Focus();
            MultiView1.ActiveViewIndex = 3;

        }
        else
        {
            MultiView1.ActiveViewIndex = 4;
        }


    }
    protected void Button4_Click(object sender, EventArgs e)
    {
        Response.Redirect("AdminHomePage.aspx");
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        Response.Redirect("AdminHomePage.aspx");
    }
    protected void Button7_Click(object sender, EventArgs e)
    {

        Response.Redirect("AdminHomePage.aspx");
    }
    protected void Button9_Click(object sender, EventArgs e)
    {
        txtsearchbyid.Text = "";
        txtsearchbyid.Focus();
        MultiView1.ActiveViewIndex = 1;

    }
    protected void Button10_Click(object sender, EventArgs e)
    {
        txtsearchbyname.Text = "";
        txtsearchbyname.Focus();
        MultiView1.ActiveViewIndex = 3;
    }
    protected void Button12_Click(object sender, EventArgs e)
    {

        txtsearchbyid.Text = "";
        txtsearchbyid.Focus();
        MultiView1.ActiveViewIndex = 1;
    }
    protected void Button11_Click(object sender, EventArgs e)
    {
        txtsearchbyname.Text = "";
        txtsearchbyid.Focus();
        MultiView1.ActiveViewIndex = 3;
    }

    protected void Button3_Click(object sender, EventArgs e)
    {
        MultiView1.ActiveViewIndex = 0;

    }

    protected void Button4_Click1(object sender, EventArgs e)
    {
        MultiView1.ActiveViewIndex = 0;

    }
}