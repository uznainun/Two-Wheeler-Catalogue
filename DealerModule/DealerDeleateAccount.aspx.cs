using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class DealerModule_DealerDeleateAccount : System.Web.UI.Page
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
        str = "select password from login where userid=" + Session["uid"].ToString();
        connectionclass obj = new connectionclass();
        obj.datareader(str);
        if (obj.dr.HasRows)
        {
            obj.dr.Read();
            if (obj.dr[0].ToString() == txtpassword.Text)
            {
                str = "delete login  where userid=" + Session["uid"].ToString();
                obj.exe_Command(str);
                str = "delete dealerregistration where d_id=" + Session["uid"].ToString();
                obj.exe_Command(str);
                str = "delete dealer_registered_type where d_id=" + Session["uid"].ToString();
                obj.exe_Command(str);
                str = "delete dealer_registered_brands where d_id=" + Session["uid"].ToString();
                obj.exe_Command(str);


                str = "select p_id from product where d_id=" + Session["uid"].ToString();
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
            else
            {
                Response.Write("<script>alert('incorrect password, please provide correct password.')</script>");
                txtpassword.Text = string.Empty;
                txtreenterpassword.Text = string.Empty;
                txtpassword.Focus();
            }
        }

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        Response.Redirect("DealerHomePage.aspx");
    }
}