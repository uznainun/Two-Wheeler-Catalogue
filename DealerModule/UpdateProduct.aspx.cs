using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class DealerModule_Default : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            MultiView1.ActiveViewIndex = 0;
        }

        get_gridview_data();

    }
    protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
    {
        Session["pid"] = GridView1.SelectedRow.Cells[1].Text;
        gettype();
        refreshbrands();
        string str;
        str = "select product.p_id,product.p_name,product.price,product.type,product.brand,product.s_desc,product.l_desc,Specification.product_color,Specification.mileage,Specification.bhp,Specification.tyre,Specification.brakes,Specification.fueltank,Specification.topspeed from product,Specification where product.p_id=Specification.p_id and product.p_id="+Session["pid"].ToString();
        connectionclass obj = new connectionclass();
        obj.datareader(str);
        if (obj.dr.HasRows)
        {
            obj.dr.Read();
            lblpid.Text = obj.dr[0].ToString();
            txtpname.Text = obj.dr[1].ToString();
            txtprice.Text = obj.dr[2].ToString();
            ddltype.SelectedValue = obj.dr[3].ToString();
            ddlbrand.SelectedValue = obj.dr[4].ToString();
            txtsdesc.Text = obj.dr[5].ToString();
            txtldesc.Text = obj.dr[6].ToString();
            txtcolor.Text = obj.dr[7].ToString();
            txtmileage.Text = obj.dr[8].ToString();
            txtbhp.Text = obj.dr[9].ToString();
            ddltyres.SelectedItem.Text = obj.dr[10].ToString();
            ddlbrakes.SelectedItem.Text = obj.dr[11].ToString();
            txtfueltank.Text = obj.dr[12].ToString();
            txttopspeed.Text = obj.dr[13].ToString();
        }
        lblproductname.Text = "Product : " + GridView1.SelectedRow.Cells[2].Text;
        MultiView1.ActiveViewIndex = 1;

    }


    protected void Button2_Click(object sender, EventArgs e)
    {
        if (btupdate.Text == "edit" || btupdate.Text == "Edit")
        {
            txtpname.Enabled = true;
            txtprice.Enabled = true;
            ddltype.Enabled = true;
            ddlbrand.Enabled = true;
            txtsdesc.Enabled = true;
            txtldesc.Enabled = true;
            txtcolor.Enabled = true;
            txtmileage.Enabled = true;
            txtbhp.Enabled = true;
            ddltyres.Enabled = true;
            ddlbrakes.Enabled = true;
            txtfueltank.Enabled = true;
            txttopspeed.Enabled = true;
            txtbhp.Enabled = true;
            btupdate.Text = "update";
            txtpname.Focus();
        }
        else if(btupdate.Text=="update" || btupdate.Text=="Update")
        {
            string str;
            str = "update product set p_name='" + txtpname.Text + "',price=" + txtprice.Text + ", type=" + ddltype.SelectedValue.ToString() + ",brand=" + ddlbrand.SelectedValue.ToString() + ",s_desc='" + txtsdesc.Text + "',l_desc='" + txtldesc.Text + "' where p_id=" + Session["pid"].ToString();
            connectionclass obj = new connectionclass();
            obj.exe_Command(str);
            str = "update Specification set product_color='"+txtcolor.Text+"',mileage='"+txtmileage.Text+"',bhp='"+txtbhp.Text+"',tyre='"+ddltyres.SelectedItem.ToString()+"',brakes='"+ddlbrakes.SelectedItem.ToString()+"',fueltank='"+txtfueltank.Text+"',topspeed='"+txttopspeed.Text+"' where p_id="+Session["pid"].ToString();
            obj.exe_Command(str);
            Response.Write("<script>alert('product details sucessfully updated')</script>");
            get_gridview_data();
            MultiView1.ActiveViewIndex = 0;

        }
    }
    protected void Button3_Click(object sender, EventArgs e)
    {
        Response.Redirect("DealerHomePage.aspx");
    }
    protected void ddltype_SelectedIndexChanged(object sender, EventArgs e)
    {
        refreshbrands();
    }

    public void gettype()
    {

        string str;
        str = "select dealer_registered_type.t_id,type.type from dealer_registered_type, type where dealer_registered_type.t_id=type.id and dealer_registered_type.d_id=" + Session["uid"].ToString();

        connectionclass obj = new connectionclass();
        obj.datareader(str);
        ddltype.Items.Clear();
        if (obj.dr.HasRows)
        {
            while (obj.dr.Read())
            {
                ListItem itm = new ListItem();

                itm.Text = obj.dr[1].ToString();
                itm.Value = obj.dr[0].ToString();
                ddltype.Items.Add(itm);
            }
        }
    }
    public void refreshbrands()
    {

        string str;
        str = "select dealer_registered_brands.b_id,brands.brand from dealer_registered_brands,brands where dealer_registered_brands.b_id=brands.id and dealer_registered_brands.d_id=" + Session["uid"].ToString() + " and brands.t_id=" + ddltype.SelectedValue;
        connectionclass obj = new connectionclass();
        obj.datareader(str);
        ddlbrand.Items.Clear();
        if (obj.dr.HasRows)
        {
            while (obj.dr.Read())
            {
                ListItem itm = new ListItem();

                itm.Text = obj.dr[1].ToString();
                itm.Value = obj.dr[0].ToString();
                ddlbrand.Items.Add(itm);
            }
        }
        //System.IO.File.Delete("");
    }
    public void get_gridview_data()
    {
        string str;
        str = "select product.p_id as ID, product.p_name as Name,brands.brand as Brand,type.type as Type, product.price as Price,product.s_desc,product.l_desc,Specification.product_color as Color,Specification.mileage as Milleage,Specification.bhp as BHP,Specification.tyre as Tyre,Specification.fueltank as Fuel_Tank,Specification.brakes as Brakes,Specification.topspeed  as Top_Speed from product,Specification,brands,type  where product.d_id=" + Session["uid"].ToString() + "and brands.id=product.brand and product.type=type.id and  product.p_id= Specification.p_id ";
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