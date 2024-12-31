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

public partial class CART : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection("Data Source=LAPTOP-7TTBCP62\\SQLEXPRESS;Initial Catalog=ElectronicShopping;user id=sa;pwd=sql");
    string str, str1;
    SqlCommand cmd = new SqlCommand();
    SqlDataAdapter da = new SqlDataAdapter();
    DataSet ds = new DataSet();
    int su = 2;
    protected void Page_Load(object sender, EventArgs e)
    {
        
        try
        {
            grtot();
        }
        catch
        {
        }
        if (IsPostBack == false)
        {
            cart();
        
        }
    }
    protected void GridView1_PageIndexChanging(object sender, GridViewPageEventArgs e)
    {
        GridView1.EditIndex = -1;
        cart();
    }
    protected void GridView1_RowCancelingEdit(object sender, GridViewCancelEditEventArgs e)
    {
        GridView1.EditIndex = -1;
        cart();
    }
    protected void GridView1_RowDeleting(object sender, GridViewDeleteEventArgs e)
    {
        try
        {
            SqlCommand dcmd = new SqlCommand();
            cmd.CommandText = "delete from cart1 where prodid=@prodid";
            cmd.Parameters.Add("@prodid", SqlDbType.NVarChar).Value = Convert.ToString(GridView1.Rows[e.RowIndex].Cells[1].Text);
            cmd.Connection = con;
            con.Open();
            cmd.ExecuteNonQuery();
            con.Close();
            cart();
        }
        catch (Exception ex)
        {
        }
    }
    protected void GridView1_RowEditing(object sender, GridViewEditEventArgs e)
    {
        GridView1.EditIndex = e.NewEditIndex;
        cart();
    }
    protected void GridView1_RowUpdating(object sender, GridViewUpdateEventArgs e)
    {
        try
        {
            if ((!(su == 1)
                        && (su == 2)))
            {
               
                DropDownList st = ((DropDownList)(GridView1.Rows[e.RowIndex].Cells[3].Controls[1]));
                st.Visible = true;
                string t = GridView1.Rows[e.RowIndex].Cells[1].Text;
                string t1 = GridView1.Rows[e.RowIndex].Cells[2].Text;
                string t2 = Convert.ToString((Convert.ToInt32(st.SelectedItem.Text) * Convert.ToInt32(t1)));
                //Session["Qty"] = st.SelectedItem.Text;
                //st.Text  = Session["Qty"].ToString();
                str = ("update cart1 set tot='" + t2 + "' where prodid='" + t + "'");
                cmd = new SqlCommand(str, con);
                con.Open();
                cmd.ExecuteNonQuery();
                con.Close();
                cart();
                su = 3;

                //Session["Qty"] = st.SelectedItem.Text;

            }
        }
        catch (Exception ex)
        {
        }
        grtot();
    }
    protected void grtot()
    {
        str1 = "select tot from cart1";
        cmd = new SqlCommand(str1, con);
        da = new SqlDataAdapter(cmd);
        ds = new DataSet();
        da.Fill(ds, "cart1");
        int sat;
        sat = ds.Tables[0].Rows.Count;
        if ((sat > 0))
        {
            int i;
            int j;
            j = 0;
            for (i = 0; (i
                        <= (sat - 1)); i++)
            {
                j = (j + Convert.ToInt32(ds.Tables[0].Rows[i][0].ToString()));
            }
            Label3.Text = Convert.ToString(j);
        }
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        string ses = Session["url"].ToString();


        Response.Redirect(ses);
    }
    protected void cart()
    {
        SqlCommand cmd = new SqlCommand("select * from cart1", con);
        SqlDataAdapter da = new SqlDataAdapter(cmd);
        DataSet ds = new DataSet();
        da.Fill(ds, "cart1");
        GridView1.DataSource = ds;
        GridView1.DataBind();
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        Session["grtot"] = Label3.Text;
        if (ds.Tables["cart1"].Rows.Count == 0)
        {
            MessageBox.Show("YOUR CART IS EMPTY");
        }
        else
        {
            try
            {
                string st1 = Session["userid"].ToString();
            }
            catch
            {

                MessageBox.Show("YOU MUST LOGIN");
                Response.Redirect("Login1.aspx");
            }

            Response.Redirect("Shipping1.aspx");
        }
    }
}
