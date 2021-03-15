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
using System.Net.Mail;
using System.Net;
public partial class satisfoy : System.Web.UI.Page
{
    string connStr = WebConfigurationManager.ConnectionStrings["mydb"].ConnectionString;
    string alısbedel;
    protected void Page_Load(object sender, EventArgs e)
    {
        HttpCookie myCookiess = Request.Cookies["myCookiee"];
       HttpCookie myCookies = Request.Cookies["myCookie"];
       Label1.Text = myCookies["kullanici_ad"].ToString() + "[Çıkış]";
     
        if (myCookiess["durumu"].ToString() == "Rezerve" && myCookies["Yetki_Id"].ToString() == "2")
	    {
		 btnkaydet.Visible=true;
         btnreddet.Visible=true;
         btnmuhasebeonay.Visible=false;
         btniptal.Visible=true;
         btnpatron.Visible = false;
         Image1.Visible = false;
	    }
       else if (myCookiess["durumu"].ToString() == "Odeme" && myCookies["Yetki_Id"].ToString() == "3")
	    {
		 btnkaydet.Visible=false;
         btnreddet.Visible=true;
         btnmuhasebeonay.Visible=true;
         btniptal.Visible=true;
         btnpatron.Visible = false;
         Image1.Visible = false;
	    }
            //ekleme yapılan yer
        else if (myCookiess["durumu"].ToString() == "Yonetim" && myCookies["Yetki_Id"].ToString() == "6")
        {
            btnkaydet.Visible = false;
            btnreddet.Visible = true;
            btnpatron.Visible = true;
            btnmuhasebeonay.Visible = false;
            btniptal.Visible = true;
            Image1.Visible = false;
        }
        else if (myCookies["Yetki_Id"].ToString() == "4")
        {
            btnkaydet.Visible = false;
            btnreddet.Visible = false;
            btnmuhasebeonay.Visible = false;
            btnpatron.Visible = false;
            btniptal.Visible = true;
            Image1.Visible = true;
        }
       else
       {
           btnkaydet.Visible = false;
           btnreddet.Visible = false;
           btnmuhasebeonay.Visible = false;
           btniptal.Visible = true;
           Image1.Visible = false;
           btnpatron.Visible = false;
       }
    }

    protected void btnkaydet_Click(object sender, EventArgs e)
    {  
        HttpCookie myCookies = Request.Cookies["myCookie"];
        SqlConnection conn = new SqlConnection(connStr);
        SqlCommand cmd = new SqlCommand("satisfoy", conn);
        cmd.CommandType = CommandType.StoredProcedure;

        cmd.Parameters.AddWithValue("@rz_onay_veren", myCookies["kullanici_ad"]);
        cmd.Parameters.AddWithValue("@aracid",Convert.ToInt32(Request.QueryString["aracid"]));

        conn.Open();
    int id=    cmd.ExecuteNonQuery();
    if (id>0)
    {
          Response.Write("<script>alert('Araç Onaylandı..')</script>");
          Response.Redirect("~/araclistesi.aspx");
    }
      conn.Close();
    }
    protected void btnreddet_Click(object sender, EventArgs e)
    {
        SqlConnection conn = new SqlConnection(connStr);
        SqlCommand cmd = new SqlCommand("rezerve_iptal", conn);
        cmd.CommandType = CommandType.StoredProcedure;

        cmd.Parameters.AddWithValue("@aracid", Convert.ToInt32(Request.QueryString["aracid"]));

        conn.Open();
    int id= cmd.ExecuteNonQuery();
    if (id>0)
    {
          Response.Write("<script>alert('Araç Reddedildi..')</script>");
          Response.Redirect("~/araclistesi.aspx");
    }
      conn.Close();
    }
    protected void btniptal_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/araclistesi.aspx");
    }
    
    protected void btnmuhasebeonay_Click(object sender, EventArgs e)
    {
        HttpCookie myCookies = Request.Cookies["myCookie"];
        SqlConnection conn = new SqlConnection(connStr);
        SqlCommand cmd = new SqlCommand("odeme_onay", conn);
        cmd.CommandType = CommandType.StoredProcedure;

        cmd.Parameters.AddWithValue("@st_onay", myCookies["kullanici_ad"]);
        cmd.Parameters.AddWithValue("@aracid",Convert.ToInt32(Request.QueryString["aracid"]));

        conn.Open();
    int id=    cmd.ExecuteNonQuery();
    if (id>0)
    {
          Response.Write("<script>alert('Araç Onaylandı..')</script>");
          Response.Redirect("~/araclistesi.aspx");
    }
      conn.Close();
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
    protected void ImageButton3_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/araclistesi.aspx");
    }
    protected void ImageButton5_Click1(object sender, ImageClickEventArgs e)
    {
        Response.Redirect("~/araclistesi.aspx");
    }

    protected void btnpatron_Click(object sender, EventArgs e)
    {
        HttpCookie myCookies = Request.Cookies["myCookie"];
        SqlConnection conn = new SqlConnection(connStr);
        SqlCommand cmd = new SqlCommand("patron_onay", conn);
        cmd.CommandType = CommandType.StoredProcedure;

        cmd.Parameters.AddWithValue("@st_onay", myCookies["kullanici_ad"]);
        cmd.Parameters.AddWithValue("@aracid", Convert.ToInt32(Request.QueryString["aracid"]));

        conn.Open();
        int id = cmd.ExecuteNonQuery();
        if (id > 0)
        {
            Response.Write("<script>alert('Araç Onaylandı..')</script>");
            Response.Redirect("~/araclistesi.aspx");
        }
        conn.Close();
    }
}