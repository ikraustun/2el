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

public partial class _Default : System.Web.UI.Page
{ string connStr = WebConfigurationManager.ConnectionStrings["mydb"].ConnectionString;

    protected void Page_Load(object sender, EventArgs e)
    {
      
    }


protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
{
    SqlConnection conn = new SqlConnection(connStr);
    SqlCommand cmd = new SqlCommand("giris", conn);
    cmd.CommandType = CommandType.StoredProcedure;
    cmd.Parameters.AddWithValue("@Kadi", txtad.Text);
    cmd.Parameters.AddWithValue("@Sifre", txtsifre.Text);


    SqlDataReader dr;
    DataTable dtUye = new DataTable();

    if (conn.State == ConnectionState.Closed)
        conn.Open();
    dr = cmd.ExecuteReader();
    dtUye.Load(dr);
    conn.Close();
    if (dtUye.Rows.Count > 0)
    {
        HttpCookie myCookie = new HttpCookie("myCookie");
        myCookie["kullanici_id"] = dtUye.Rows[0][0].ToString();
        myCookie["kullanici_ad"] = dtUye.Rows[0][1].ToString();
        myCookie["Yetki_Id"] = dtUye.Rows[0][3].ToString();
        myCookie["eposta"] = dtUye.Rows[0][4].ToString();
        myCookie.Expires = DateTime.Now.AddDays(1); // cookiesimiz 1 saat kalsın dedik.
        Response.Cookies.Add(myCookie); // cookies ekledik
        Response.Redirect("~/araclistesi.aspx");


    }
    else
    {

        Response.Write("<script>alert('Kullanıcı Adı veya Şifre Hatalı.')</script>");
    }

}
}