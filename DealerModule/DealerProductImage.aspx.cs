using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class DealerModule_DealerProductImage : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            MultiView1.ActiveViewIndex = 0;
        }


    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        Response.Write("<script>alert('" + Session["pid_for_image"] + "')</script>");
    }
    protected void Button1_Click1(object sender, EventArgs e)
    {
        Response.Redirect("../DealerModule/DealerHomePage.aspx");
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        Session["check"] = "true";

        if (FileUpload1.HasFile)
        {
            string extension;
            extension = System.IO.Path.GetExtension(FileUpload1.FileName);
            if (extension.ToLower() == ".png" || extension.ToLower() == ".jpg" || extension.ToLower() == "jpeg" || extension.ToLower() == "bmp" || extension.ToLower() == ".tiff")
            {

                string str, image_name;
                image_name = Session["pid_for_image"] + "_" + FileUpload1.FileName;
                str = "insert into product_images values(" + Session["pid_for_image"].ToString() + ",'" + image_name + "');";
                connectionclass obj = new connectionclass();
                obj.exe_Command(str);
                FileUpload1.SaveAs(Server.MapPath("../DealerModule/images/" + image_name));
                Session["check"] = "false";
            }
        }
        if (FileUpload2.HasFile)
        {
            string extension;
            extension = System.IO.Path.GetExtension(FileUpload2.FileName);
            if (extension.ToLower() == ".png" || extension.ToLower() == ".jpg" || extension.ToLower() == "jpeg" || extension.ToLower() == "bmp" || extension.ToLower() == ".tiff")
            {

                string str, image_name;
                image_name = Session["pid_for_image"] + "_" + FileUpload2.FileName;
                str = "insert into product_images values(" + Session["pid_for_image"].ToString() + ",'" + image_name + "');";
                connectionclass obj = new connectionclass();
                obj.exe_Command(str);
                FileUpload2.SaveAs(Server.MapPath("../DealerModule/images/" + image_name));
                Session["check"] = "false";
            }
        }
        if (FileUpload3.HasFile)
        {
            string extension;
            extension = System.IO.Path.GetExtension(FileUpload3.FileName);
            if (extension.ToLower() == ".png" || extension.ToLower() == ".jpg" || extension.ToLower() == "jpeg" || extension.ToLower() == "bmp" || extension.ToLower() == ".tiff")
            {

                string str, image_name;
                image_name = Session["pid_for_image"] + "_" + FileUpload3.FileName;
                str = "insert into product_images values(" + Session["pid_for_image"].ToString() + ",'" + image_name + "');";
                connectionclass obj = new connectionclass();
                obj.exe_Command(str);
                FileUpload3.SaveAs(Server.MapPath("../DealerModule/images/" + image_name));
                Session["check"] = "false";
            }
        }
        if (FileUpload4.HasFile)
        {
            string extension;
            extension = System.IO.Path.GetExtension(FileUpload4.FileName);
            if (extension.ToLower() == ".png" || extension.ToLower() == ".jpg" || extension.ToLower() == "jpeg" || extension.ToLower() == "bmp" || extension.ToLower() == ".tiff")
            {

                string str, image_name;
                image_name = Session["pid_for_image"] + "_" + FileUpload4.FileName;
                str = "insert into product_images values(" + Session["pid_for_image"].ToString() + ",'" + image_name + "');";
                connectionclass obj = new connectionclass();
                obj.exe_Command(str);
                FileUpload4.SaveAs(Server.MapPath("../DealerModule/images/" + image_name));
                Session["check"] = "false";
            }
        }

        if (Session["check"].ToString() == "false")
        {
            Response.Write("<script>alert('product images sucessfully updated');window.location='DealerHomePage.aspx'</script>");
        }
        else
        {
            Response.Write("<script>alert('empty images controls or invalid image formats');</script>");


        }




    }
}