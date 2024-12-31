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

public partial class AdminViewProdRank : System.Web.UI.Page
{

    SqlConnection conn = new SqlConnection();
    protected void Page_Load(object sender, EventArgs e)
    {
        conn.ConnectionString = "Data Source=LAPTOP-7TTBCP62\\SQLEXPRESS;Initial Catalog=ElectronicShopping;user id=sa;pwd=sql";
        Load_GridData(); // call method below
    }

    void Load_GridData()
    {
        conn.Open();  // open the connection 
        SqlDataAdapter Sqa = new SqlDataAdapter("select top 10 name,price,imginfo from info order by rank desc", conn);
        DataSet ds = new DataSet();
        Sqa.Fill(ds);   // fill the dataset 
        GridView1.DataSource = ds; // give data to GridView
        GridView1.DataBind();
        conn.Close();
    }
    protected void LinkButton3_Click(object sender, EventArgs e)
    {
        Response.Redirect("Login.aspx");
    }
    protected void LinkButton2_Click(object sender, EventArgs e)
    {
        Response.Redirect("AdminUserLog.aspx");
    }
}
