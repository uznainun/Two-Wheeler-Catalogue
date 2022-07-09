using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class AdminModule_VerifiedDealer : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            MultiView1.ActiveViewIndex = 0;
        }

        string str;
        str = "select * from dealerregistration left join pending_registration on dealerregistration.d_id=pending_registration.d_id where pending_registration.d_id is null ";
        connectionclass obj = new connectionclass();
        obj.groupdata(str);
        GridView1.DataSource = obj.ds.Tables["temptable"];
        GridView1.DataBind();

        if (GridView1.Rows.Count == 0)
            lblnodatafound.Visible = true;
    }

    protected void GridView1_SelectedIndexChanged1(object sender, EventArgs e)
    {


        MultiView1.ActiveViewIndex = 1;
    }
    protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
    {


        Session["d_id"] = GridView1.SelectedRow.Cells[1].Text;
        
        Label1.Text = "Dealer : " + GridView1.SelectedRow.Cells[2].Text;
        MultiView1.ActiveViewIndex = 1;

    }
    protected void Button4_Click(object sender, EventArgs e)
    {
        MultiView1.ActiveViewIndex = 0;
        GridView1.DataBind();
        if (GridView1.Rows.Count == 0)
            lblnodatafound.Visible = true;
    }
}