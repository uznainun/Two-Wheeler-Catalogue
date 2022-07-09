using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class DealerModule_DealerSearch : System.Web.UI.Page
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
        str = "select product.p_name as Name,brands.brand as Brand,type.type as Type, product.price as Price,Specification.product_color as Color,Specification.mileage as Milleage,Specification.bhp as BHP,Specification.tyre as Tyre,Specification.fueltank as Fuel_Tank,Specification.brakes as Brakes,Specification.topspeed  as Top_Speed from product,Specification,brands,type  where  product.p_id=" + txtsearchbyid.Text + " and product.d_id=" + Session["uid"].ToString() + "and brands.id=product.brand and product.type=type.id and  product.p_id= Specification.p_id ";
        connectionclass obj = new connectionclass();
        obj.groupdata(str);
        GridView1.DataSource = obj.ds.Tables["temptable"];
        GridView1.DataBind();
        if (GridView1.Rows.Count == 0)
        {
            Response.Write("<script>alert('no such item found');</script>");
                txtsearchbyid.Text="";
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
        str = "select product.p_name as Name,brands.brand as Brand,type.type as Type, product.price as Price,Specification.product_color as Color,Specification.mileage as Milleage,Specification.bhp as BHP,Specification.tyre as Tyre,Specification.fueltank as Fuel_Tank,Specification.brakes as Brakes,Specification.topspeed  as Top_Speed from product,Specification,brands,type  where  product.p_name like('%" + txtsearchbyname.Text + "%') and product.d_id=" + Session["uid"].ToString() + "and brands.id=product.brand and product.type=type.id and  product.p_id= Specification.p_id ";
        connectionclass obj = new connectionclass();
        obj.groupdata(str);
        GridView2.DataSource = obj.ds.Tables["temptable"];
        GridView2.DataBind();
         if (GridView2.Rows.Count == 0)
        {
            Response.Write("<script>alert('no such item found');</script>");
                txtsearchbyname.Text="";
            txtsearchbyname.Focus();
            MultiView1.ActiveViewIndex =3;

        }
        else
        {
            MultiView1.ActiveViewIndex = 4;
        }


    }
    protected void Button4_Click(object sender, EventArgs e)
    {
        Response.Redirect("DealerHomePage.aspx");
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        Response.Redirect("DealerHomePage.aspx");
    }
    protected void Button7_Click(object sender, EventArgs e)
    {

        Response.Redirect("DealerHomePage.aspx");
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
}