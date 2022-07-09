using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class DealerModule_viewProduct : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            MultiView1.ActiveViewIndex = 0;
        }
        get_gridview_data();
       
       
    }
   
    protected void GridView1_SelectedIndexChanged1(object sender, EventArgs e)
    {
        
      
   MultiView1.ActiveViewIndex = 1;
    }
    protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
    {

        Session["pid"] = GridView1.SelectedRow.Cells[1].Text;
        Label1.Text ="Product : "+ GridView1.SelectedRow.Cells[2].Text;
        MultiView1.ActiveViewIndex = 1;

    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        MultiView1.ActiveViewIndex = 0;
    }

    public void get_gridview_data()
    {
        string str;
        str = "select product.p_id as ID, product.p_name as Name,brands.brand as Brand,type.type as Type, product.price as Price,Specification.product_color as Color,Specification.mileage as Milleage,Specification.bhp as BHP,Specification.tyre as Tyre,Specification.fueltank as Fuel_Tank,Specification.brakes as Brakes,Specification.topspeed  as Top_Speed from product,Specification,brands,type  where product.d_id=" + Session["uid"].ToString() + "and brands.id=product.brand and product.type=type.id and  product.p_id= Specification.p_id ";
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