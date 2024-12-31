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
    string str;
    protected void Page_Load(object sender, EventArgs e)
    {
       
          
      
        
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
                
                    
        if (TextBox1.Text == "" || TextBox3.Text == "" || TextBox5.Text == "" || TextBox8.Text == "" || TextBox10.Text == "")
        {
            MessageBox.Show("Dont Let Blank Fields");
        }
        else if (TextBox2.Text.Length <= 6)
        {
            MessageBox.Show("Password Must Be More Then 7 Chars");
        }
        else
        {
            try
            {
                str = "insert into users values('" + TextBox1.Text + "','" + TextBox2.Text + "','" + TextBox3.Text + "','" + TextBox4.Text + "','" + TextBox5.Text + "','" + TextBox6.Text + "','" + TextBox7.Text + "','" + TextBox8.Text + "','" + TextBox9.Text + "','" + TextBox10.Text + "','" + TextBox11.Text + "','" + TextBox12.Text + "','" + DropDownList1.Text + "','" + DropDownList2.Text + "','" + TextBox13.Text + "',0)";
                con.Open();
                cmd = new SqlCommand(str, con);
                cmd.ExecuteNonQuery();
                MessageBox.Show("Registered Successfully");
                Response.Redirect("login.aspx");
            }
            catch
            {

            }

        }
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        TextBox1.Text = "";
        TextBox2.Text = "";
        TextBox3.Text = "";
        TextBox4.Text = "";
        TextBox5.Text = "";
        TextBox6.Text = "";
        TextBox7.Text = "";
        TextBox8.Text = "";
        TextBox9.Text = "";
        TextBox10.Text = "";
        TextBox11.Text = "";
        TextBox12.Text = "";
        TextBox13.Text = "";
        DropDownList1.Text = "Select";
        DropDownList2.Text = "Select";
    }
    protected void LinkButton6_Click(object sender, EventArgs e)
    {
        Response.Redirect("login.aspx");
    }

    
}
