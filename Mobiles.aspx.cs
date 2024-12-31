using System;
using System.Collections;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Xml.Linq;
using System.Windows.Forms;

public partial class _Default : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection("Data Source=LAPTOP-7TTBCP62\\SQLEXPRESS;Initial Catalog=ElectronicShopping;user id=sa;pwd=sql");
    SqlCommand cmd, cmd1 = new SqlCommand();
    SqlDataAdapter da, da1 = new SqlDataAdapter();
    DataSet ds, ds1;
    string str,pr,code,ss, cost;
    protected void Page_Load(object sender, EventArgs e)
    {
        Session["text1"] = "tt";
    }

    private void link(string code, string cost)
    {
        str = "insert into cart1 values('Mobiles','" + code + "','" + cost + "','0')";
        string str2 = "insert into purchase values('Mobiles','" + code + "','" + cost + "','0')";
        cmd = new SqlCommand(str, con);
        cmd.ExecuteNonQuery();
        cmd = new SqlCommand(str2, con);
        cmd.ExecuteNonQuery();

    }

    private void sales(string code)
    {

        con.Open();
        SqlCommand cmd2 = new SqlCommand("select prodid from cart1 where prodid='" + code + "'", con);
        SqlDataAdapter da2 = new SqlDataAdapter(cmd2);
        DataSet ds2 = new DataSet();
        da2.Fill(ds2, "cart1");

        if (ds2.Tables[0].Rows.Count > 0)
        {
            pr = ds2.Tables["cart1"].Rows[0][0].ToString();
            ss = pr;
            if (code == pr)
            {
                MessageBox.Show("Product Already In Cart");
            }
        }


    }

    protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
    {
        Session["url"] = "";
        Session["url"] = "Mobiles.aspx";
        code = Label2.Text;
        cost = Label3.Text;
        sales(code);

        if (ss == code)
        {


        }
        else
        {
            link(code, cost);
            Session["imginfo"] = code;
            Response.Redirect("prodinfo.aspx");
        }
    }
    protected void ImageButton2_Click(object sender, ImageClickEventArgs e)
    {
        Session["url"] = "";
        Session["url"] = "Mobiles.aspx";
        code = Label4.Text;
        cost = Label5.Text;

        sales(code);

        if (ss == code)
        {


        }
        else
        {
            link(code, cost);
            Session["imginfo"] = code;
            Response.Redirect("prodinfo.aspx");
        }
    }
    protected void ImageButton3_Click(object sender, ImageClickEventArgs e)
    {
        Session["url"] = "";
        Session["url"] = "Mobiles.aspx";
        code = Label6.Text;
        cost = Label7.Text;

        sales(code);

        if (ss == code)
        {


        }
        else
        {
            link(code, cost);
            Session["imginfo"] = code;
            Response.Redirect("prodinfo.aspx");
        }
    }
    protected void ImageButton4_Click(object sender, ImageClickEventArgs e)
    {
        Session["url"] = "";
        Session["url"] = "Mobiles.aspx";
        code = Label8.Text;
        cost = Label9.Text;

        sales(code);

        if (ss == code)
        {


        }
        else
        {
            link(code, cost);
            Session["imginfo"] = code;
            Response.Redirect("prodinfo.aspx");
        }
    }
    protected void ImageButton5_Click(object sender, ImageClickEventArgs e)
    {
        Session["url"] = "";
        Session["url"] = "Mobiles.aspx";
        code = Label10.Text;
        cost = Label11.Text;
        sales(code);

        if (ss == code)
        {


        }
        else
        {
            link(code, cost);
            Session["imginfo"] = code;
            Response.Redirect("prodinfo.aspx");
        }
    }
    protected void ImageButton6_Click(object sender, ImageClickEventArgs e)
    {
        Session["url"] = "";
        Session["url"] = "Mobiles.aspx";
        code = Label12.Text;
        cost = Label13.Text;
        sales(code);

        if (ss == code)
        {


        }
        else
        {
            link(code, cost);
            Session["imginfo"] = code;
            Response.Redirect("prodinfo.aspx");
        }
    }
    protected void ImageButton7_Click(object sender, ImageClickEventArgs e)
    {
        Session["url"] = "";
        Session["url"] = "Mobiles.aspx";
        code = Label14.Text;
        cost = Label15.Text;
        sales(code);

        if (ss == code)
        {


        }
        else
        {
            link(code, cost);
            Session["imginfo"] = code;
            Response.Redirect("prodinfo.aspx");
        }
    }
    protected void ImageButton8_Click(object sender, ImageClickEventArgs e)
    {
        Session["url"] = "";
        Session["url"] = "Mobiles.aspx";
        code = Label16.Text;
        cost = Label17.Text;
        sales(code);
        sales(code);

        if (ss == code)
        {


        }
        else
        {
            link(code, cost);
            Session["imginfo"] = code;
            Response.Redirect("prodinfo.aspx");
        }
    }
    protected void ImageButton9_Click(object sender, ImageClickEventArgs e)
    {
        Session["url"] = "";
        Session["url"] = "Mobiles.aspx";
       
        code = Label18.Text;
        cost = Label19.Text;
        sales(code);
        sales(code);

        if (ss == code)
        {


        }
        else
        {
            link(code, cost);
            Session["imginfo"] = code;
            Response.Redirect("prodinfo.aspx");
        }
    }
}
