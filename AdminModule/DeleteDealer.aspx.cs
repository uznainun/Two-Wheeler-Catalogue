using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class AdminModule_DeleteDealer : System.Web.UI.Page
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
        connectionclass obj = new connectionclass();
        str = "delete login  where userid=" + txtreenter.Text;
        obj.exe_Command(str);
        str = "delete dealerregistration where d_id=" + txtreenter.Text;
        obj.exe_Command(str);
        str = "delete dealer_registered_type where d_id=" + txtreenter.Text;
        obj.exe_Command(str);
        str = "delete dealer_registered_brands where d_id=" + txtreenter.Text;
        obj.exe_Command(str);


        str = "select p_id from product where d_id=" + txtreenter.Text;
        connectionclass obj2 = new connectionclass();
        obj2.datareader(str);
        if (obj2.dr.HasRows)
        {


            while (obj2.dr.Read())
            {
                str = "delete specification where p_id=" + obj2.dr[0].ToString();
                obj2.exe_Command(str);

                str = "delete stock where p_id=" + obj2.dr[0].ToString();
                obj2.exe_Command(str);

                str = "delete product where p_id=" + obj2.dr[0].ToString();
                obj2.exe_Command(str);
            }
        }
    }
    protected void Button1_Click(object sender, EventArgs e)
    {

        Response.Redirect("AdminHomePage.aspx");
    }
}