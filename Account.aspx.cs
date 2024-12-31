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
using System.Windows.Forms;


public partial class _Default : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection("Data Source=LAPTOP-7TTBCP62\\SQLEXPRESS;Initial Catalog=ElectronicShopping;user id=sa;pwd=sql");
    SqlCommand cmd, cmd1 = new SqlCommand();
    SqlDataAdapter da, da1 = new SqlDataAdapter();
    DataSet ds, ds1;
    string str,mail,pwd,str2;
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {

            Label12.Visible = false;
            Label13.Visible = false;
            TextBox3.Visible = false;
            Button2.Visible = false;
            Label14.Visible = false;
        }
       
        try
        {
            //SqlDataAdapter da = new SqlDataAdapter("truncate table cart1",con );
            //DataSet ds = new DataSet();
            //da.Fill(ds, "cart1");
        }
        catch
        {
        }
    }
    protected void LinkButton7_Click(object sender, EventArgs e)
    {
        Label12.Visible = true;
        Label13.Visible = true;
        TextBox3.Visible = true;
        Button2.Visible = true;
        Label14.Visible = true;
    }
    protected void LinkButton6_Click(object sender, EventArgs e)
    {
        Response.Redirect("newuser.aspx");
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
       

    }
    protected void Button2_Click(object sender, EventArgs e)
    {
      
    }
}
