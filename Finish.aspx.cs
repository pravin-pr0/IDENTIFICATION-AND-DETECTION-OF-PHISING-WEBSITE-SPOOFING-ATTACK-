using System;
using System.Collections;
using System.Configuration;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Xml.Linq;
using System.Data.SqlClient;


public partial class _Default : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection("Data Source=LAPTOP-7TTBCP62\\SQLEXPRESS;Initial Catalog=ElectronicShopping;user id=sa;pwd=sql");
    protected void Page_Load(object sender, EventArgs e)
    {
        try
        {
            SqlDataAdapter da = new SqlDataAdapter("truncate table cart1", con);
            DataSet ds = new DataSet();
            da.Fill(ds, "cart1");
            //Session.Clear();
        }
        catch
        {
        }
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        string outTime = System.DateTime.Now.ToLongTimeString();
        SqlCommand cmd2 = new SqlCommand("insert into LogDetails(email,UserName,UserIP,TimeIn,TimeOut)values( '" + Session["userid"] + "','" + Session["Uname"] + "','" + Session["ipAddress"] + "','" + Session["inTime"] + "','" + outTime + "')", con);
        con.Open();
        SqlDataAdapter da2 = new SqlDataAdapter(cmd2);
        cmd2.Connection = con;
        cmd2.ExecuteNonQuery();
        con.Close();
        Session.Clear();
        Response.Redirect("Login.aspx");
    }
}
