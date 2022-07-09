using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class GeneralModule_generalhomepage : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
            Session.Abandon();
    }
    protected void DataList1_ItemCommand(object source, DataListCommandEventArgs e)
    {
        Label id = new Label();
        id = (Label)e.Item.FindControl("lblproductid");
        Session["Product_id"] = id.Text;
        id = (Label)e.Item.FindControl("lbldealerid");
        Session["dealer_id"] = id.Text;

        Session["out_of_stock"] = "fasle";
        string str;
        str = "select stock.quantity from  stock where stock.p_id=" + Session["Product_id"].ToString();
        connectionclass obj = new connectionclass();
        obj.datareader(str);
        if (obj.dr.HasRows)
        {
            obj.dr.Read();
            int q=Convert.ToInt32(obj.dr[0].ToString());
            if (q==0)
            {
                Session["out_of_stock"] = "true";

            }

        }

        Response.Redirect("ProductFullDetails.aspx");


    }
}