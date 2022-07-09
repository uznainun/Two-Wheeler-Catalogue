using System;
using System.Collections.Generic;
using System.Linq;
using System.Net.Mail;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class GeneralModule_userregistration : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        MultiView1.ActiveViewIndex = 0;
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        string str = "select u_name from userregistration where u_email='" + txtemailid.Text + "';";
        connectionclass obj = new connectionclass();
        obj.datareader(str);
        if (obj.dr.HasRows)
        {
            Response.Write("<script>alert('This Email ID is already registered. Please try again with another Email ID');</script>");

            //txtemailid.Text = "";
            //txtemailid.Focus();
            //MultiView1.ActiveViewIndex = 0;

            /*this is temporary code */

            Random r = new Random();
            long n;
            n = r.Next(1000, 10000);
            ViewState["otp"] = n.ToString();
            MailMessage m = new MailMessage("securesally@gmail.com", txtemailid.Text, "OTP  - From UznainUN@Gmail.com", "hi user your otp is :  " + n.ToString());
            SmtpClient sc = new SmtpClient();
            sc.EnableSsl = true;
            sc.Port = 587;
            sc.Send(m);
            lbtuseremailid.Text = txtemailid.Text;
            MultiView1.ActiveViewIndex = 1;
            txtotp.Focus();
        }
        else
        {
            Random r = new Random();
            long n;
            n = r.Next(1000, 10000);
            ViewState["otp"] = n.ToString();
            MailMessage m = new MailMessage("securesally@gmail.com", txtemailid.Text, "OTP  - From UznainUN@Gmail.com", "hi user your otp is :  " + n.ToString());
            SmtpClient sc = new SmtpClient();
            sc.EnableSsl = true;
            sc.Port = 587;
            sc.Send(m);
            lbtuseremailid.Text = txtemailid.Text;
            MultiView1.ActiveViewIndex = 1;
            txtotp.Focus();
        }



        //Random r = new Random();
        //long n;
        //n = r.Next(1000, 10000);
        //ViewState["otp"] = n.ToString();
        //Response.Write("<script>alert('your otp is " + n.ToString() + "');</script>");
        //lbtuseremailid.Text = txtemailid.Text;
        //MultiView1.ActiveViewIndex = 1;

    }
    protected void Button3_Click(object sender, EventArgs e)
    {
        Response.Redirect("generalhomepage.aspx");
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        int otp;
        otp = Convert.ToInt32(txtotp.Text);
        if (otp == Convert.ToInt32(ViewState["otp"]))
        //if (true)
        {
            twoweelercatalog obj = new twoweelercatalog();
            obj.getregion(ddlregion);
            obj.refreshcity(ddlcity, ddlregion);

            MultiView1.ActiveViewIndex = 2;
        }
        else
        {
            Response.Write("<script>alert('incorrect otp please enter a valid otp you have recieved or click on resend otp again');</script>");
            txtotp.Text = "";
            txtotp.Focus();
            MultiView1.ActiveViewIndex = 1;
        }

    }
    protected void Button5_Click(object sender, EventArgs e)
    {
        Response.Redirect("generalhomepage.aspx");
    }
    protected void lbtuseremailid_Click(object sender, EventArgs e)
    {

    }
    protected void LinkButton2_Click(object sender, EventArgs e)
    {
        txtotp.Text = "";
        txtemailid.Text = "";
        txtemailid.Focus();
        MultiView1.ActiveViewIndex = 0;
    }
    protected void LinkButton1_Click(object sender, EventArgs e)
    {

        Random r = new Random();
        long n;
        n = r.Next(1000, 10000);
        ViewState["otp"] = n.ToString();
        MailMessage m = new MailMessage("UznainUN@gmail.com", txtemailid.Text, "<b>OTP  - From UznainUN@Gmail.com</b>", "hi user your new otp is :" + n.ToString());
        m.IsBodyHtml = true;
        SmtpClient sc = new SmtpClient();
        sc.EnableSsl = true;
        sc.Port = 587;
        sc.Send(m);


        txtotp.Text = "";
        txtotp.Focus();

        Response.Write("<script>alert('new otp has been sent to : " + txtemailid.Text + " ');</script>");
        MultiView1.ActiveViewIndex = 1;
    }
    protected void Button4_Click(object sender, EventArgs e)
    {

        if (FileUpload1.HasFile)
        {
            string extension;
            extension = System.IO.Path.GetExtension(FileUpload1.FileName);
            if (extension.ToLower() == ".png" || extension.ToLower() == ".jpg" || extension.ToLower() == "jpeg" || extension.ToLower() == "bmp" || extension.ToLower() == ".tiff")
            {
                string str;
                str = "insert into userregistration values('" + txtname.Text + "'," + ddlage.SelectedValue + ",'" + ddlgender.SelectedValue + "'," + txtcno.Text + ",'" + txtemailid.Text + "'," + txtpincode.Text + "," + ddlcity.SelectedValue + ",'" + txtaddress.Text + "','" + FileUpload1.FileName + "');";


                connectionclass obj = new connectionclass();
                obj.exe_Command(str);
                str = "select max(u_id) from userregistration";
                obj.datareader(str);
                if (obj.dr.HasRows)
                {
                    obj.dr.Read();
                    string dp_name;
                    dp_name = obj.dr[0].ToString() + "_" + FileUpload1.FileName;
                    str = "update userregistration set u_dp='" + dp_name + "' where u_id=" + obj.dr[0].ToString();
                    obj.exe_Command(str);
                    FileUpload1.SaveAs(Server.MapPath("../UserModule/images/" + dp_name));

                    string psw;
                    Random r = new Random();
                    psw = txtcno.Text + "/" + r.Next(1000, 10000).ToString();


                    MailMessage m = new MailMessage("UznainUN@gmail.com", txtemailid.Text, "Account username and password  - From UznainUN@Gmail.com", "Dear, " + txtname.Text + " congratulations you are sucessfully registered as a new user <br />Your user name is : " + txtemailid.Text + "<br />password is : " + psw);
                    m.IsBodyHtml = true;
                    SmtpClient sc = new SmtpClient();
                    sc.EnableSsl = true;
                    sc.Port = 587;
                    sc.Send(m);

                    str = "insert into login values('" + txtemailid.Text + "','" + psw + "','user','" + obj.dr[0].ToString() + "');";
                    obj.exe_Command(str);
                    MultiView1.ActiveViewIndex = 3;

                }
                else
                {
                    Response.Write("<script>login error</script>");
                }


            }
            else
            {
                Response.Write("<script>alert('invalid file format, file format should be only png,jgp,jpeg,bmp,tiff');</script>");
                MultiView1.ActiveViewIndex = 2;
                return;

            }
        }
        else
        {
            Response.Write("<script>alert('please choose your profile picture');</script>");
            MultiView1.ActiveViewIndex = 2;
            return;
        }

    }
    protected void Button6_Click(object sender, EventArgs e)
    {
        Response.Redirect("generalhomepage.aspx");
    }
    protected void ddlregion_SelectedIndexChanged(object sender, EventArgs e)
    {
        twoweelercatalog obj = new twoweelercatalog();
        obj.refreshcity(ddlcity, ddlregion);
        MultiView1.ActiveViewIndex = 2;
    }
    protected void CheckBoxList1_SelectedIndexChanged(object sender, EventArgs e)
    {

        btregister.Enabled = true;
        MultiView1.ActiveViewIndex = 2;
    }
    protected void LinkButton3_Click(object sender, EventArgs e)
    {
        Response.Redirect("login.aspx");
    }
}