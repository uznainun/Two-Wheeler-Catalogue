using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class DealerModule_DealerIncreaseQuantity : System.Web.UI.Page
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
        Session["pid"] = GridView1.SelectedRow.Cells[1].Text;
        Label2.Text = "Product : " + GridView1.SelectedRow.Cells[2].Text;
        MultiView1.ActiveViewIndex = 1;
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        string str;
        str = "select stock.quantity from stock where stock.p_id=" + Session["pid"].ToString() ;
        connectionclass obj = new connectionclass();
        obj.datareader(str);
        if (obj.dr.HasRows)
        {
            obj.dr.Read();
            int previous_stock,new_stock;
            previous_stock = Convert.ToInt32(obj.dr[0].ToString());
            new_stock = previous_stock + Convert.ToInt32(txtincreaseQuantity.Text);

            str = "update stock set Quantity=" + new_stock + "where p_id=" + Session["pid"].ToString();
            obj.exe_Command(str);
            //SqlDataSource1.DataBind();
            //GridView1.DataBind();
            Response.Write("<script>alert('stock sucessfully updated');</script>");
            get_gridview_data();
            MultiView1.ActiveViewIndex = 0;
        }
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