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
    SqlCommand cmd, cmd1 = new SqlCommand();
    SqlDataAdapter da, da1 = new SqlDataAdapter();
    DataSet ds, ds1;
    string str, mail, pwd, str2;
    string ipadd,logTime;
    protected void Page_Load(object sender, EventArgs e)
    {
        logTime = System.DateTime.Now.ToLongTimeString();
        if (!IsPostBack)
        {
            Label12.Visible = false;
            Label13.Visible = false;
            TextBox3.Visible = false;
            Button2.Visible = false;
            Label14.Visible = false;          
            //Label1.Text = "WELCOME  ";
            
        }
         ipadd = IpAddress();
          
    }
    public string IpAddress()
    {
        string strHostName = System.Net.Dns.GetHostName();
        string clientIPAddress = System.Net.Dns.GetHostAddresses(strHostName).GetValue(0).ToString();
        return clientIPAddress;
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        try
        {           
                Session.Clear();
                SqlCommand cmd = new SqlCommand("select email,password,uCnt,fname from users where email='" + TextBox1.Text + "' and password='" + TextBox2.Text + "'", con);
                SqlDataAdapter da = new SqlDataAdapter(cmd);                    
                DataSet ds = new DataSet();
                da.Fill(ds, "users");
            int exec=ds.Tables[0].Rows.Count;
            if(exec>0)
            {
                Session["userid"] = ds.Tables["users"].Rows[0][0].ToString();
                Session["password"] = ds.Tables["users"].Rows[0][1].ToString();
                Session["Uname"] = ds.Tables["users"].Rows[0][3].ToString(); ;
                Session["inTime"]= System.DateTime.Now.ToLongTimeString();
                Session["ipAddress"] = IpAddress();
            }
            else if (TextBox1.Text=="Admin" && TextBox2.Text=="Admin")
            {
                Response.Redirect("AdminViewProdRank.aspx");
            }
            else
            {
                string strHostName = null;
                strHostName = System.Net.Dns.GetHostName();
                cmd1.CommandText = "insert into HackerTry values('" + System.DateTime.Now.ToLongDateString() + "','" + TextBox1.Text + "','" + TextBox2.Text + "','" + strHostName + "','" + ipadd + "','" + logTime + " ' ,'" + System.DateTime.Now.ToLongTimeString() + "')";
                con.Open();
                cmd1.Connection = con;
                cmd1.ExecuteNonQuery();
                con.Close();    
                
            }           

            Response.Redirect("useracc.aspx");
                
            
        }
        catch (Exception ex)
        {
            //MessageBox.Show(ex.ToString());
        }
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        try
        {
            SqlCommand cmd1 = new SqlCommand("select password from users where email='" + TextBox3.Text + "'", con);
            con.Open();
            SqlDataAdapter da1 = new SqlDataAdapter(cmd1);
            DataSet ds1 = new DataSet();
            da1.Fill(ds1, "users");
            Label13.Text = ds1.Tables["users"].Rows[0][0].ToString();
        }
        catch
        {
        }
    }
    protected void Button3_Click(object sender, EventArgs e)
    {

    }
    protected void LinkButton6_Click(object sender, EventArgs e)
    {
        Response.Redirect("newuser.aspx");
    }
    protected void LinkButton7_Click(object sender, EventArgs e)
    {

    }
    //private void UpdateTimer()
    //{
    //   // Label15.Text = System.DateTime.Now.ToLongTimeString();
    //}
    //protected void Timer1_Tick(object sender, EventArgs e)
    //{
    // //   UpdateTimer();
    //}

    
    protected void tmrLive_Tick(object sender, EventArgs e)
    {
        Label15.Text = System.DateTime.Now.ToLongTimeString();
    }
}
