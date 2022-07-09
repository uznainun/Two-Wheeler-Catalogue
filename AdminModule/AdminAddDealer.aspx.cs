using System;
using System.Collections.Generic;
using System.Linq;
using System.Net.Mail;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class AdminModule_AdminAddDealer : System.Web.UI.Page
{

    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
            MultiView1.ActiveViewIndex = 0;


    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        string str = "select d_name from dealerregistration where d_email='" + txtemailid.Text + "';";
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
            MailMessage m = new MailMessage("UznainUN@gmail.com", txtemailid.Text, "OTP  - From UznainUN@Gmail.com", "hi user your otp is :  " + n.ToString());
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
            MailMessage m = new MailMessage("UznainUN@gmail.com", txtemailid.Text, "OTP  - From UznainUN@Gmail.com", "hi user your otp is :  " + n.ToString());
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
        MailMessage m = new MailMessage("UznainUN@gmail.com", txtemailid.Text, "<b>OTP  - From UznainUN@Gmail.com</b>", "hi user your new otp is :  " + n.ToString());
        //m.IsBodyHtml = true;
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

                FileUpload1.SaveAs(Server.MapPath("../DealerModule/images/" + FileUpload1.FileName));

                string psw;
                Random r = new Random();
                psw = txtcno.Text + "/" + r.Next(1000, 10000).ToString();

                MailMessage m = new MailMessage("UznainUN@gmail.com", txtemailid.Text, "Account username and password - From UznainUN@Gmail.com", "Dear, " + txtname.Text + " congratulations you are sucessfully registered as a new user <br />Your user name is : " + txtemailid.Text + "<br />password is : " + psw);
                m.IsBodyHtml = true;
                SmtpClient sc = new SmtpClient();
                sc.EnableSsl = true;
                sc.Port = 587;
                sc.Send(m);



                string str;
                str = "insert into dealerregistration values('" + txtsname.Text + "','" + txtname.Text + "'," + ddlage.SelectedValue + ",'" + ddlgender.SelectedValue + "'," + txtcno.Text + ",'" + txtemailid.Text + "'," + txtpincode.Text + "," + ddlcity.SelectedValue + ",'" + txtaddress.Text + "','" + FileUpload1.FileName + "');";
                connectionclass obj = new connectionclass();

                obj.exe_Command(str);

                str = "select d_id from dealerregistration where d_name='" + txtname.Text + "' and d_contact='" + txtcno.Text + "';";
                obj.datareader(str);
                if (obj.dr.HasRows)
                {
                    obj.dr.Read();
                    string userid;
                    userid = obj.dr[0].ToString();
                    str = "insert into login values('" + txtemailid.Text + "','" + psw + "','user','" + userid + "');";
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
    protected void Button7_Click(object sender, EventArgs e)
    {
        if (FileUpload1.HasFile)
        {
            string extension;
            extension = System.IO.Path.GetExtension(FileUpload1.FileName);
            if (extension.ToLower() == ".png" || extension.ToLower() == ".jpg" || extension.ToLower() == "jpeg" || extension.ToLower() == "bmp" || extension.ToLower() == ".tiff")
            {

                FileUpload1.SaveAs(Server.MapPath("../DealerModule/images/" + FileUpload1.FileName));

                twoweelercatalog obj = new twoweelercatalog();
                obj.gettype(ddltype);
                obj.refreshbrands(ddltype, chkbrand);
                MultiView1.ActiveViewIndex = 3;
                MultiView2.ActiveViewIndex = 0;
                lblbrandfor.Text = lblbrandfor.Text + " " + ddltype.SelectedItem.ToString();



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


    protected void Button8_Click(object sender, EventArgs e)
    {
        string psw;
        Random r = new Random();
        psw = txtcno.Text + "/" + r.Next(1000, 10000).ToString();

        string str;
        str = "insert into dealerregistration values('" + txtsname.Text + "','" + txtname.Text + "'," + ddlage.SelectedValue + ",'" + ddlgender.SelectedValue + "'," + txtcno.Text + ",'" + txtemailid.Text + "'," + txtpincode.Text + "," + ddlcity.SelectedValue + ",'" + txtaddress.Text + "','" + FileUpload1.FileName + "');";
        connectionclass obj = new connectionclass();
        obj.exe_Command(str);

        str = "select d_id from dealerregistration where d_name='" + txtname.Text + "' and d_contact='" + txtcno.Text + "';";
        // above line of code is used because in login we have to provide userid ie sequence or auto generated id
        obj.datareader(str);
        if (obj.dr.HasRows)
        {

            obj.dr.Read();

            Session["d_id"] = obj.dr[0].ToString();

            if (ddltype.SelectedItem.ToString().ToLower() == "bikes" || ddltype.SelectedItem.ToString().ToLower() == "scooties")
            {
                // insert type
                str = "insert into dealer_registered_type values(" + Session["d_id"].ToString() + "," + ddltype.SelectedValue + ");";
                obj.exe_Command(str);

                // insert brand

                int i = 0;
                while (i < chkbrand.Items.Count)
                {
                    if (chkbrand.Items[i].Selected == true)
                    {
                        string str22;
                        str22 = "insert into dealer_registered_brands values(" + Session["d_id"].ToString() + "," + chkbrand.Items[i].Value.ToString() + ");";
                        connectionclass obj22 = new connectionclass();
                        obj22.exe_Command(str22);
                    }
                    i++;

                }
            }
            else if (ddltype.SelectedItem.ToString() == "Both" || ddltype.SelectedItem.ToString() == "both")
            {
                //insert  first type 
                str = "insert into dealer_registered_type values(" + Session["d_id"].ToString() + "," + ddltype.Items[0].Value + ");";
                obj.exe_Command(str);
                //insert second type
                str = "insert into dealer_registered_type values(" + Session["d_id"].ToString() + "," + ddltype.Items[1].Value + ");";
                obj.exe_Command(str);
                // insert first type  brands
                int i = 0;
                while (i < chkbikes.Items.Count)
                {
                    if (chkbikes.Items[i].Selected == true)
                    {
                        string str22;
                        str22 = "insert into dealer_registered_brands values(" + Session["d_id"].ToString() + "," + chkbikes.Items[i].Value.ToString() + ");";
                        connectionclass obj22 = new connectionclass();
                        obj22.exe_Command(str22);
                    }
                    i++;

                }

                //insert second type brands

                int j = 0;
                while (j < chkscooties.Items.Count)
                {
                    if (chkscooties.Items[j].Selected == true)
                    {
                        string str22;
                        str22 = "insert into dealer_registered_brands values(" + Session["d_id"].ToString() + "," + chkscooties.Items[j].Value.ToString() + ");";
                        connectionclass obj22 = new connectionclass();
                        obj22.exe_Command(str22);
                    }
                    j++;

                }

            }
            str = "insert into login values('" + txtemailid.Text + "','" + psw + "','dealer','" + Session["d_id"].ToString() + "');";
            obj.exe_Command(str);

            MailMessage m = new MailMessage("UznainUN@gmail.com", txtemailid.Text, "Account username and password  - From UznainUN@Gmail.com", "Dear, " + txtname.Text + " congratulations you are sucessfully registered as a new user <br />Your user name is : " + txtemailid.Text + "<br />password is : " + psw);
            m.IsBodyHtml = true;
            SmtpClient sc = new SmtpClient();
            sc.EnableSsl = true;
            sc.Port = 587;
            sc.Send(m);
            MultiView1.ActiveViewIndex = 4;

        }
        else
        {
            Response.Write("<script>login error</script>");
        }
    }
    protected void Button9_Click(object sender, EventArgs e)
    {
        Response.Redirect("GeneralHomePage.aspx");
    }

    protected void ddltype_SelectedIndexChanged(object sender, EventArgs e)
    {
        chkselectallbikes.Checked = false;
        chkselectallscooties.Checked = false;
        chkselectallbieksorscooties.Checked = false;

        if (ddltype.SelectedItem.ToString() == "Both" || ddltype.SelectedItem.ToString() == "both")
        {


            twoweelercatalog obj = new twoweelercatalog();
            obj.refreshbothbrands(chkbikes, chkscooties);
            MultiView2.ActiveViewIndex = 1;


        }
        else
        {

            twoweelercatalog obj = new twoweelercatalog();
            obj.refreshbrands(ddltype, chkbrand);
            lblbrandfor.Text = "Brands For";
            lblbrandfor.Text = lblbrandfor.Text + " " + ddltype.SelectedItem.ToString();
            MultiView2.ActiveViewIndex = 0;
        }

    }
    protected void CheckBox4_CheckedChanged(object sender, EventArgs e)
    {
        if (chkselectallbieksorscooties.Checked == true)
        {
            int i;
            i = 0;
            while (i < chkbrand.Items.Count)
            {
                chkbrand.Items[i].Selected = true;
                i++;
            }

        }
        else
        {
            int i;
            i = 0;
            while (i < chkbrand.Items.Count)
            {
                chkbrand.Items[i].Selected = false;
                i++;
            }


        }
    }
    protected void chkselectallscooties_CheckedChanged(object sender, EventArgs e)
    {
        twoweelercatalog obj = new twoweelercatalog();
        obj.selectall(chkselectallscooties, chkscooties);

    }
    protected void chkselectallbikes_CheckedChanged(object sender, EventArgs e)
    {
        twoweelercatalog obj = new twoweelercatalog();
        obj.selectall(chkselectallbikes, chkbikes);
    }
    protected void chkbikes_SelectedIndexChanged(object sender, EventArgs e)
    {

    }
}