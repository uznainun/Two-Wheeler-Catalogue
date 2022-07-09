using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class GeneralModule_productinfo : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void DataList1_ItemCommand(object source, DataListCommandEventArgs e)
    {
        Label id = new Label();
        id = (Label)e.Item.FindControl("lblpid");
        Session["pid"] = id.Text;
        Response.Redirect("bookproduct.aspx");
    }
}