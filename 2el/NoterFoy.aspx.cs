using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.Sql;
using System.Data.SqlClient;
using System.Web.Configuration;
public partial class NoterFoy : System.Web.UI.Page
{
    string connStr = WebConfigurationManager.ConnectionStrings["mydb"].ConnectionString;
    
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btnkaydet_Click(object sender, EventArgs e)
    {
        HttpCookie myCookies = Request.Cookies["myCookie"];
        SqlConnection conn = new SqlConnection(connStr);
        SqlCommand cmd = new SqlCommand("noter_onay", conn);
        cmd.CommandType = CommandType.StoredProcedure;

        cmd.Parameters.AddWithValue("@noter_onay_veren", myCookies["kullanici_ad"]);
        cmd.Parameters.AddWithValue("@aracid", Convert.ToInt32(Request.QueryString["aracid"]));

        conn.Open();
        int id = cmd.ExecuteNonQuery();
        if (id > 0)
        {
            Response.Write("<script>alert('Araç Onaylandı..')</script>");
            Response.Redirect("~/noter.aspx");
        }
        conn.Close();
    }
 
    protected void ImageButton3_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/noter.aspx");
    }
    protected void Label1_Click(object sender, EventArgs e)
    {
        HttpCookie myCookie = Request.Cookies["myCookie"]; // cookiesimizi okuduk
        myCookie.Expires = DateTime.Now.AddDays(-2);
        Response.Cookies.Add(myCookie); // cookies ekledik

        if (Request.Cookies["durumu"] != null && Request.Cookies["Yetki_Id"] != null)
        {

            HttpCookie myCookiee = Request.Cookies["myCookiee"]; // cookiesimizi okuduk
            myCookiee.Expires = DateTime.Now.AddDays(-2);
            Response.Cookies.Add(myCookiee); // cookies ekledik
        }
        Response.Redirect("~/Default.aspx");//Silme işleminden sonra ana sayfaya yönlendiriyoruz.
    
    }
}