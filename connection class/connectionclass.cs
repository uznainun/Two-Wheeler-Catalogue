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
/// Summary description for connectionclass
/// </summary>
public class connectionclass
{
    SqlConnection conn;
    SqlCommand cmd;
    public SqlDataReader dr;
    SqlDataAdapter da;
    public DataSet ds;

    // create connection 
    void connection()
    {
     conn= new SqlConnection();
     conn.ConnectionString="Data source = .;  Initial Catalog=TwoWheelerCatalogue;    Integrated Security=True";
        if(conn.State==ConnectionState.Open)

            // if already exist close, and create new connection 
            conn.Close();

            conn.Open();
     }

     
    // read, write 
    // write  -insert, update, delete
    public void exe_Command(String sql)
    {
        connection();
        cmd = new SqlCommand();
        cmd.CommandText = sql;
        cmd.CommandType = CommandType.Text;
        cmd.Connection = conn;
        cmd.ExecuteNonQuery();

    }

    // read 
    // select 
    public void datareader(String sql)
    {

        // get data
        connection();
        cmd = new SqlCommand();
        cmd.CommandText = sql;
        cmd.CommandType = CommandType.Text;
        cmd.Connection = conn;
        dr = cmd.ExecuteReader();

    }


    // get data 
    public void groupdata(String sql)
    {
        connection();
        da = new SqlDataAdapter(sql,conn);
        ds = new DataSet();
        da.Fill(ds, "temptable");
        
    }
}