using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI.WebControls;


public class twoweelercatalog
{
    public void getregion(DropDownList ddlregn)
    {
        string str;
        str = "select r_id,region from region;";
        connectionclass obj = new connectionclass();
        obj.datareader(str);
        ddlregn.Items.Clear();
        if (obj.dr.HasRows)
        {

            while (obj.dr.Read())
            {
                ListItem itm = new ListItem();
                itm.Text = obj.dr[1].ToString();
                itm.Value = obj.dr[0].ToString();
                ddlregn.Items.Add(itm);
            }
            ddlregn.SelectedIndex = 0;
        }
    }
    public void refreshcity(DropDownList ddlcty, DropDownList ddlregn)
    {
        string str;
        str = "select c_id,city from city where r_id=" + ddlregn.SelectedValue;
        connectionclass obj = new connectionclass();
        obj.datareader(str);
        ddlcty.Items.Clear();
        if (obj.dr.HasRows)
        {
            while (obj.dr.Read())
            {
                ListItem itm = new ListItem();
                itm.Text = obj.dr[1].ToString();
                itm.Value = obj.dr[0].ToString();
                ddlcty.Items.Add(itm);
            }
            ddlcty.SelectedIndex = 0;
        }
    }

    public void refreshbrands(DropDownList ddlty, CheckBoxList chkbd)
    {
        string str;
        connectionclass obj = new connectionclass();
        str = "select id,brand from brands where t_id =" + ddlty.SelectedValue.ToString();
        obj.datareader(str);
        chkbd.Items.Clear();
        if (obj.dr.HasRows)
        {
            while (obj.dr.Read())
            {
                ListItem itm = new ListItem();
                itm.Text = obj.dr[1].ToString();
                itm.Value = obj.dr[0].ToString();
                chkbd.Items.Add(itm);
            }
        }

    }
    public void selectall(CheckBox chkbx, CheckBoxList chklist)
    {

        if (chkbx.Checked == true)
        {
            int i;
            i = 0;
            while (i < chklist.Items.Count)
            {
                chklist.Items[i].Selected = true;
                i++;
            }

        }
        else
        {
            int i;
            i = 0;
            while (i < chklist.Items.Count)
            {
                chklist.Items[i].Selected = false;
                i++;
            }
        }

    }
    public void refreshbothbrands(CheckBoxList chkbk, CheckBoxList chksc)
    {
        chkbk.Items.Clear();
        chksc.Items.Clear();

        string str;
        str = "select * from  type where type='bikes';";
        connectionclass obj = new connectionclass();
        obj.datareader(str);
        if (obj.dr.HasRows)
        {
            obj.dr.Read();
            str = "select id,brand from brands where t_id =" + obj.dr[0].ToString();
            connectionclass obj2 = new connectionclass();
            obj2.datareader(str);
            if (obj2.dr.HasRows)
            {
                while (obj2.dr.Read())
                {
                    ListItem itm = new ListItem();
                    itm.Text = obj2.dr[1].ToString();
                    itm.Value = obj2.dr[0].ToString();
                    chkbk.Items.Add(itm);
                }
            }

        }

        // for scooties

        str = "select * from  type where type='scooties';";
        connectionclass obj3 = new connectionclass();
        obj3.datareader(str);
        if (obj3.dr.HasRows)
        {
            obj3.dr.Read();
            str = "select id,brand from brands where t_id =" + obj3.dr[0].ToString();
            connectionclass obj4 = new connectionclass();
            obj4.datareader(str);
            if (obj4.dr.HasRows)
            {
                while (obj4.dr.Read())
                {
                    ListItem itm = new ListItem();
                    itm.Text = obj4.dr[1].ToString();
                    itm.Value = obj4.dr[0].ToString();
                    chksc.Items.Add(itm);
                }
            }
        }
    }
    public void gettype(DropDownList ddlty)
    {
        string str;
        connectionclass obj = new connectionclass();
        str = "select * from type";
        obj.datareader(str);
        ddlty.Items.Clear();
        if (obj.dr.HasRows)
        {
            while (obj.dr.Read())
            {
                ListItem itm = new ListItem();
                itm.Text = obj.dr[1].ToString();
                itm.Value = obj.dr[0].ToString();
                ddlty.Items.Add(itm);
            }
            ddlty.SelectedIndex = 0;
        }
    }
}