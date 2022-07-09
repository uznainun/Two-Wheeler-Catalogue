using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.Drawing;
using System.Text;

/// <summary>
/// Summary description for Class1
/// </summary>
public class connectionclass
{
    SqlConnection conn;
    SqlCommand cmd;
    public SqlDataReader dr;
    SqlDataAdapter da;
    public DataSet ds;
    void connection()
    {
        conn = new SqlConnection();
        conn.ConnectionString = "Data source = Basit\\SQLEXPRESS;Initial Catalog=TwoWheelerCatalogue;Integrated Security=True;User ID=sa;Password=sa";
        conn.Open();
    }
    public void exe_Command(String sql)
    {
        connection();
        cmd = new SqlCommand();
        cmd.CommandText = sql;
        cmd.CommandType = CommandType.Text;
        cmd.Connection = conn;
        cmd.ExecuteNonQuery();
    }
    public void datareader(String sql)
    {
        connection();
        cmd = new SqlCommand();
        cmd.CommandText = sql;
        cmd.CommandType = CommandType.Text;
        cmd.Connection = conn;
        dr = cmd.ExecuteReader();
    }
    public void groupdata(String sql)
    {
        connection();
        da = new SqlDataAdapter(sql, conn);
        ds = new DataSet();
        da.Fill(ds, "temptable");

    }
}