using System;
using System.Collections.Generic;
using System.Linq;
using System.Net.Mail;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class GeneralModule_login : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        MultiView1.ActiveViewIndex = 0;

        //txtuserid.Text = "hello";
        //var x = txtuserid.Text;


    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        Response.Redirect("DealerRegistration.aspx");
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        string str;
        str = "select * from login where username='" + txtuserid.Text + "' and password='" + txtuserpassword.Text + "';";
        connectionclass obj = new connectionclass();
        obj.datareader(str);

        if (obj.dr.HasRows)
        {
            obj.dr.Read();

            Session["uid"] = obj.dr[4];
            Session["usertype"] = obj.dr[3];

            if (obj.dr["usertype"].ToString().ToLower() == "admin")
            {
                Response.Redirect("../AdminModule/AdminHomePage.aspx");
            }
            else if (obj.dr["usertype"].ToString().ToLower() == "dealer")
            {
                Response.Redirect("../DealerModule/DealerHomePage.aspx");
            }
            else if (obj.dr["usertype"].ToString().ToLower() == "user")
            {
                Response.Redirect("../UserModule/UserHomePage.aspx");
            }

        }
        else
        {
            

            txtuserid.Text = "";
            txtuserpassword.Text = string.Empty;
            txtuserid.Focus();
            Response.Write("<script>    alert('invalid username or password')   </script>");

        }
    }
    protected void LinkButton1_Click(object sender, EventArgs e)
    {
        txtforgotemailid.Text = "";
        MultiView1.ActiveViewIndex = 1;
    }
    protected void btrecover_Click(object sender, EventArgs e)
    {

        string str = "select d_id,d_name from dealerregistration where d_email='" + txtforgotemailid.Text + "';";
        connectionclass obj = new connectionclass();
        obj.datareader(str);
        if (obj.dr.HasRows)
        {
            obj.dr.Read();

            string psw;
            Random r = new Random();
            psw = txtforgotemailid.Text + "$" + r.Next(1000, 10000).ToString();

            MailMessage m = new MailMessage("UznainUN@gmail.com", txtforgotemailid.Text, "Account Passsword Recovery  - From UznainUN@Gmail.com", "Dear, " + obj.dr[1].ToString() + ", Your new password is : " + psw);
            m.IsBodyHtml = true;
            SmtpClient sc = new SmtpClient();
            sc.EnableSsl = true;
            sc.Port = 587;
            sc.Send(m);

            string str2;
            str2 = "update login set password='" + psw + "' where userid=" + obj.dr[0].ToString();
            obj.exe_Command(str2);

            Response.Write("<script>alert('your password has been sucessfully reset.New password has been sent to your registered email. ');</script>");
            txtuserid.Text = "";
            txtuserpassword.Text = "";

            MultiView1.ActiveViewIndex = 0;
            txtuserid.Focus();
        }
        else
        {
            Response.Write("<script>alert('this is not a registered email.please enter a registered email and hit recover.')</script>");
            txtforgotemailid.Text = "";
            txtforgotemailid.Focus();
            MultiView1.ActiveViewIndex = 1;
        }
    }
}

