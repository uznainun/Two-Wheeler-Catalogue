using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Net.Mail;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class AdminModule_newsletter : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        Response.Redirect("../AdminModule/AdminHomePage.aspx");
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        string str, from, to, subject, msg;
        from = txtfrom.Text;
        subject = txtsubject.Text;
        msg = txtmessage.Text;

        str = "select username from login";
        connectionclass obj = new connectionclass();
        obj.datareader(str);
        if (obj.dr.HasRows)
        {
            while (obj.dr.Read())
            {
                to = obj.dr[0].ToString();
                MailMessage m = new MailMessage(from, to, subject, msg);
                SmtpClient sc = new SmtpClient();
                sc.EnableSsl = true;
                sc.Port = 587;
                sc.Send(m);
            }
        }
    }
}