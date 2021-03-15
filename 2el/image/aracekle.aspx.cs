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

public partial class aracekle : System.Web.UI.Page
{

    string connStr = WebConfigurationManager.ConnectionStrings["mydb"].ConnectionString;
    
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            SqlConnection conn = new SqlConnection(connStr);
            SqlCommand cmd = new SqlCommand("Select marka_id, marka_ad from markalar", conn);
            conn.Open();
            SqlDataReader reader = cmd.ExecuteReader();


            dpmarka.DataSource = reader;
            dpmarka.DataValueField = "marka_id";
            dpmarka.DataTextField = "marka_ad";
            dpmarka.DataBind();
            reader.Close();
            conn.Close();
            
        }
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        string a = "";
        a = txtsatısfiyat.Text + dpbirim.SelectedValue.ToString();
        SqlConnection con = new SqlConnection(connStr);
        SqlCommand cmd = new SqlCommand("ikinciel_aracekle", con);
        cmd.CommandType = CommandType.StoredProcedure;
        
        cmd.Parameters.AddWithValue("@kayit_tarih",DateTime.Now);
        cmd.Parameters.AddWithValue("@marka_id", Convert.ToInt32(dpmarka.SelectedValue));
        cmd.Parameters.AddWithValue("@model_id", Convert.ToInt32(dpmodel.SelectedValue));
        cmd.Parameters.AddWithValue("@plaka", txtplaka.Text.ToUpper());
        cmd.Parameters.AddWithValue("@satis_fiyat", a);
        cmd.Parameters.AddWithValue("@alis_fiyat", txtalisfiyat.Text);
        cmd.Parameters.AddWithValue("@model_yili", dpmodelyil.SelectedValue);
        cmd.Parameters.AddWithValue("@km", txtkm.Text);
        cmd.Parameters.AddWithValue("@renk", dprenk.SelectedValue);
        cmd.Parameters.AddWithValue("@vites", dpvites.SelectedValue);
        cmd.Parameters.AddWithValue("@motor", txtmotor.Text);
        cmd.Parameters.AddWithValue("@guc", txtguc.Text);
        cmd.Parameters.AddWithValue("@motor_no", txtmotorno.Text);
        cmd.Parameters.AddWithValue("@sase_no", txtsase.Text);
        cmd.Parameters.AddWithValue("@yakit", dpyakıt.SelectedValue);
        cmd.Parameters.AddWithValue("@kasa", dpkasa.SelectedValue);
        cmd.Parameters.AddWithValue("@muayene_tarih", txtmuayenetarihi.Text);
        cmd.Parameters.AddWithValue("@alis_tarih", txttarih.Text);
        cmd.Parameters.AddWithValue("@arac_durum", dparacdurum.SelectedValue);
        cmd.Parameters.AddWithValue("@park", dppark.SelectedValue);
        cmd.Parameters.AddWithValue("@gecici_tarih", txtgcctarih.Text);
        cmd.Parameters.AddWithValue("@aciklama", txtaciklama.Text);
        SqlParameter parm = new SqlParameter("@return", SqlDbType.Int);
        parm.Direction = ParameterDirection.ReturnValue;

        cmd.Parameters.Add(parm);
        con.Open();
      cmd.ExecuteNonQuery();
      con.Close();
      int id = Convert.ToInt32(parm.Value);
      if (id==0)
      {
          Response.Write("<script>alert('Eklediğiniz plaka sistemde mevcut..')</script>");
      }
      else if (id ==1)
       {
            Response.Write("<script>alert('Aracınız Eklendi..')</script>");
            Response.Redirect("~/araclistesi.aspx");
       }
    


    }
    protected void btniptal_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/araclistesi.aspx");
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        if (Request.Cookies["Yetki_Id"] != null && Request.Cookies["durumu"] == null)
        {
            HttpCookie myCookie = Request.Cookies["myCookie"]; // cookiesimizi okuduk
            myCookie.Expires = DateTime.Now.AddDays(-2);
            Response.Cookies.Add(myCookie); // cookies ekledik
        }
        else if (Request.Cookies["durumu"] != null && Request.Cookies["Yetki_Id"] != null)
        {
            HttpCookie myCookie = Request.Cookies["myCookie"]; // cookiesimizi okuduk
            myCookie.Expires = DateTime.Now.AddDays(-2);
            Response.Cookies.Add(myCookie); // cookies ekledik
            HttpCookie myCookiee = Request.Cookies["myCookiee"]; // cookiesimizi okuduk
            myCookiee.Expires = DateTime.Now.AddDays(-2);
            Response.Cookies.Add(myCookiee); // cookies ekledik
        }

        Response.Redirect("Default.aspx");  //Silme işleminden sonra ana sayfaya yönlendiriyoruz.
   
    }

    protected void dpmarka_SelectedIndexChanged(object sender, EventArgs e)
    {
        SqlConnection conn = new SqlConnection(connStr);
        SqlCommand com = new SqlCommand("Select model_id, model_ad from modeller where marka_id=" + dpmarka.SelectedItem.Value, conn);
        conn.Open();

        SqlDataReader reader = com.ExecuteReader();

        dpmodel.DataSource = reader;
        dpmodel.DataValueField = "model_id";
        dpmodel.DataTextField = "model_ad";
        dpmodel.DataBind();
        reader.Close();
    }
}