using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class AdminModule_AdminViewBookings : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            get_gridview_data();
            MultiView1.ActiveViewIndex = 0;
        }


    }

    protected void GridView1_SelectedIndexChanged1(object sender, EventArgs e)
    {


        MultiView1.ActiveViewIndex = 1;
    }
    protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
    {

        Session["bid"] = GridView1.SelectedRow.Cells[1].Text;

        Label1.Text = "user : " + GridView1.SelectedRow.Cells[2].Text;
        MultiView1.ActiveViewIndex = 1;
    }

    protected void Button3_Click(object sender, EventArgs e)
    {
        get_gridview_data();
        MultiView1.ActiveViewIndex = 0;
    }

    public void get_gridview_data()
    {
        string str;
        str = "select booking.id as b_id,booking.p_id as p_id, booking.u_name as name,booking.u_age as age,booking.u_gender as gender,booking.u_contact as contact ,booking.u_email as email, region.region,city.city,booking.u_address as address,booking.dob as date_of_booking ,product.p_name as product,type.type,brands.brand from booking,region,city,product,brands,type where booking.p_id=product.p_id and  product.brand=brands.id and brands.t_id=type.id and   booking.u_cityid=city.c_id and region.r_id=city.r_id";
        connectionclass obj = new connectionclass();
        obj.groupdata(str);
        GridView1.DataSource = obj.ds.Tables["temptable"];
        GridView1.DataBind();

        if (GridView1.Rows.Count == 0)
            lblnodatafound.Visible = true;
        else
            lblnodatafound.Visible = false;
    }
}