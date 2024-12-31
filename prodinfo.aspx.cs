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

public partial class prodinfo : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection("Data Source=LAPTOP-7TTBCP62\\SQLEXPRESS;Initial Catalog=ElectronicShopping;user id=sa;pwd=sql");
    SqlCommand cmd, cmd1 = new SqlCommand();
    SqlDataAdapter da, da1 = new SqlDataAdapter();
    DataSet ds, ds1;
    string str;
    protected void Page_Load(object sender, EventArgs e)
    {
        string cnt;
        try
        {
            SqlCommand cmd = new SqlCommand("select imgname,name,price,imginfo,rank from info where imgname ='" + Session["imginfo"] + "'", con);
            con.Open();
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            con.Close();
            DataSet ds = new DataSet();
            da.Fill(ds, "info");
            Label4.Text = ds.Tables["info"].Rows[0][0].ToString();
            Label2.Text = ds.Tables["info"].Rows[0][1].ToString();
            Label3.Text = ds.Tables["info"].Rows[0][2].ToString();
            string imge = ds.Tables["info"].Rows[0][3].ToString();
            cnt = ds.Tables["info"].Rows[0][4].ToString();
            int inCnt = Convert.ToInt32(cnt) + 1;
            //image3.ImageUrl = "~/products/" + imge + "";
            image3.ImageUrl = imge +"";
            Image2.ImageUrl = "~/Feacture/" + imge + "";
            SqlCommand cmd2 = new SqlCommand("update info set rank='" + inCnt + "' where imgname ='" + Session["imginfo"] + "'", con);
            con.Open();
            SqlDataAdapter da2 = new SqlDataAdapter(cmd2);
            cmd2.ExecuteNonQuery();
            con.Close();          
        }
        catch (Exception)
        {

        }              
    }   
    protected void LinkButton1_Click(object sender, EventArgs e)
    {

    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        string ses = Session["url"].ToString();
        Response.Redirect(ses);
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        Response.Redirect("CART.aspx");
    }
}
