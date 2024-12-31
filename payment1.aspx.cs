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
using System.Windows.Forms;

public partial class _Default : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        Calendar1.Visible = false;
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        if (TextBox1.Text == "" || TextBox2.Text == "")
        {
            MessageBox.Show("Enter Card Number");
        }
        else if (TextBox1.Text.Length <= 11)
        {
            MessageBox.Show("Enter Valid Card Number");
        }

        else
        {
            Response.Redirect("Summary1.aspx");
        }
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        Response.Redirect("Shipping1.aspx");
    }
    protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
    {
        Calendar1.Visible = true;
    }
    protected void Calendar1_SelectionChanged(object sender, EventArgs e)
    {
        TextBox2.Text = Calendar1.SelectedDate.ToShortDateString();
        Calendar1.Visible = false;
    }
}
