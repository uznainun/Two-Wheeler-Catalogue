using System;
using System.Collections.Generic;
using System.Linq;
using System.Net.Mail;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class AdminModule_Default : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            MultiView1.ActiveViewIndex = 0;
        }

        string str;
        str = "select pending_registration.d_id,dealerregistration.d_name,dealerregistration.d_age,dealerregistration.d_gender,dealerregistration.d_contact,dealerregistration.d_email,region.region ,city.city,dealerregistration.d_address from pending_registration,dealerregistration,region ,city where pending_registration.d_id=dealerregistration.d_id and city.c_id=dealerregistration.d_cityid and region.r_id=city.r_id";
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
        Session["d_name"] = GridView1.SelectedRow.Cells[2].Text;
        Session["d_cno"] = GridView1.SelectedRow.Cells[5].Text;
        Session["d_email"] = GridView1.SelectedRow.Cells[6].Text;
        Label1.Text = "Dealer : " + GridView1.SelectedRow.Cells[2].Text;
        MultiView1.ActiveViewIndex = 1;
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        string str;
        connectionclass obj = new connectionclass();
        str = "delete dealerregistration where d_id=" + Session["d_id"].ToString();
        obj.exe_Command(str);
        str = "delete dealer_registered_type where d_id=" + Session["d_id"].ToString();
        obj.exe_Command(str);
        str = "delete dealer_registered_brands where d_id=" + Session["d_id"].ToString();
        obj.exe_Command(str);
        str = "delete pending_registration where d_id=" + Session["d_id"].ToString();
        obj.exe_Command(str);
        Response.Write("<script>alert('request rejected sucessfully');</script>");

        GridView1.DataBind();
        MultiView1.ActiveViewIndex = 0;

        //reload
        Response.Redirect(Request.RawUrl);
    }
    protected void Button3_Click(object sender, EventArgs e)
    {

        string psw;
        Random r = new Random();
        psw = Session["d_cno"].ToString() + "/" + r.Next(1000, 10000).ToString();
        string str;
        str = "insert into login values('" + Session["d_email"].ToString() + "','" + psw + "','dealer','" + Session["d_id"].ToString() + "');";
        connectionclass obj = new connectionclass();
        obj.exe_Command(str);

        str = "delete pending_registration where d_id=" + Session["d_id"].ToString();
        obj.exe_Command(str);

        MailMessage ma = new MailMessage("UznainUN@gmail.com", Session["d_email"].ToString(), "Account username and password  - From UznainUN@Gmail.com", "Dear, " + Session["d_name"].ToString() + " congratulations you are sucessfully registered as a new user <br /> Your user name is : " + Session["d_email"].ToString() + "<br />password is : " + psw);
        ma.IsBodyHtml = true;
        SmtpClient sc = new SmtpClient();
        sc.EnableSsl = true;
        sc.Port = 587;
        sc.Send(ma);

        Response.Write("<script>alert('request approved sucessfully');</script>");

        GridView1.DataBind();

        if (GridView1.Rows.Count == 0)
            lblnodatafound.Visible = true;
        MultiView1.ActiveViewIndex = 0;

        //reload
        Response.Redirect(Request.RawUrl);

    }
    protected void Button4_Click(object sender, EventArgs e)
    {
        MultiView1.ActiveViewIndex = 0;
    }
}