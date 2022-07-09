using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class DealerModule_ViewStock : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
           
            MultiView1.ActiveViewIndex = 0;
        }

        get_gridview_data();



    }
    public void get_gridview_data()
    {
        string str;
        str = "select product.p_id as ID, product.p_name as Name,brands.brand as Brand,type.type as Type, product.price as Price,stock.quantity from product,stock,brands,type  where product.d_id=" + Session["uid"].ToString() + "and brands.id=product.brand and product.type=type.id and  product.p_id= stock.p_id";
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