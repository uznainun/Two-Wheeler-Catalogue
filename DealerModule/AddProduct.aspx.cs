using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class DealerModule_AddProduct : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            gettype();
            refreshbrands();
            MultiView1.ActiveViewIndex = 0;
        }
    }

    protected void Button4_Click(object sender, EventArgs e)
    {
        MultiView1.ActiveViewIndex = 2;
    }



    protected void Button2_Click(object sender, EventArgs e)
    {

        MultiView1.ActiveViewIndex = 1;
    }
    protected void Button6_Click(object sender, EventArgs e)
    {
        if (FileUpload1.HasFile)
        {
            string extension;
            extension = System.IO.Path.GetExtension(FileUpload1.FileName);
            if (extension.ToLower() == ".png" || extension.ToLower() == ".jpg" || extension.ToLower() == "jpeg" || extension.ToLower() == "bmp" || extension.ToLower() == ".tiff")
            {

                string str1;
                str1 = "insert into product values('" + txtpname.Text + "'," + txtprice.Text + "," + ddltype.SelectedValue + "," + ddlbrand.SelectedValue + ",'" + txtsdesc.Text + "','" + txtldesc.Text + "','" + Session["uid"].ToString() + "','" + FileUpload1.FileName + "');";
                connectionclass obj = new connectionclass();
                obj.exe_Command(str1);
                str1 = "select MAX(p_id) from product";
                connectionclass obj1 = new connectionclass();
                obj1.datareader(str1);
                if (obj1.dr.HasRows)
                {
                    obj1.dr.Read();

                }

                string str;
                str = "insert into Specification values('" + obj1.dr[0].ToString() + "','" + txtcolor.Text + "','" + txtmileage.Text + "','" + txtbhp.Text + "','" + ddltyres.SelectedItem + "','" + txtfueltank.Text + "','" + ddlbrakes.SelectedItem + "','" + txttopspeed.Text + "');";
                connectionclass obj2 = new connectionclass();
                obj2.exe_Command(str);
                str = "insert into stock values(" + obj1.dr[0].ToString() + "," + Txtquantity.Text + ");";
                connectionclass obj3 = new connectionclass();
                obj3.exe_Command(str);

                string dp_name;
                dp_name = obj1.dr[0].ToString() + "_" + FileUpload1.FileName;
                str = "update product set proimages='" + dp_name + "' where p_id=" + obj1.dr[0].ToString();
                obj.exe_Command(str);
                FileUpload1.SaveAs(Server.MapPath("../DealerModule/images/" + dp_name));



                MultiView1.ActiveViewIndex = 3;
                Session["pid_for_image"] = obj1.dr[0].ToString();
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




    protected void LinkButton1_Click(object sender, EventArgs e)
    {
        Response.Redirect("../DealerModule/DealerProductImage.aspx");
    }


    public void gettype()
    {

        string str;
        str = "select dealer_registered_type.t_id,type.type from dealer_registered_type, type where dealer_registered_type.t_id=type.id and dealer_registered_type.d_id=" + Session["uid"].ToString();

        connectionclass obj = new connectionclass();
        obj.datareader(str);
        ddltype.Items.Clear();
        if (obj.dr.HasRows)
        {
            while (obj.dr.Read())
            {
                ListItem itm = new ListItem();

                itm.Text = obj.dr[1].ToString();
                itm.Value = obj.dr[0].ToString();
                ddltype.Items.Add(itm);
            }
        }
    }
    public void refreshbrands()
    {

        string str;
        str = "select dealer_registered_brands.b_id,brands.brand from dealer_registered_brands,brands where dealer_registered_brands.b_id=brands.id and dealer_registered_brands.d_id=" + Session["uid"].ToString() + " and brands.t_id=" + ddltype.SelectedValue;
        connectionclass obj = new connectionclass();
        obj.datareader(str);
        ddlbrand.Items.Clear();
        if (obj.dr.HasRows)
        {
            while (obj.dr.Read())
            {
                ListItem itm = new ListItem();

                itm.Text = obj.dr[1].ToString();
                itm.Value = obj.dr[0].ToString();
                ddlbrand.Items.Add(itm);
            }
        }
    }
    protected void ddltype_SelectedIndexChanged(object sender, EventArgs e)
    {
        refreshbrands();
    }
}
