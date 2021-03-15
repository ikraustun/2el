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
        HttpCookie myCookies = Request.Cookies["myCookie"];
        Label1.Text = myCookies["kullanici_ad"].ToString() + "[Çıkış]";
        if (!IsPostBack)
        {
            ListBox1.Items.Clear();
           
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
        string a,b = "";
        a = txtsatısfiyat.Text;
        SqlConnection con = new SqlConnection(connStr);
        SqlCommand cmd = new SqlCommand("ikinciel_aracekle", con);
        cmd.CommandType = CommandType.StoredProcedure;

        cmd.Parameters.AddWithValue("@hasar1", txthasar1.Text);
        cmd.Parameters.AddWithValue("@hasar2", txthasar2.Text);
        cmd.Parameters.AddWithValue("@hasar3", txthasar3.Text);
        cmd.Parameters.AddWithValue("@hasar4", txthasar4.Text);
        cmd.Parameters.AddWithValue("@hasar5", txthasar5.Text);
        cmd.Parameters.AddWithValue("@hasartoplam", txttoplam.Text);

        cmd.Parameters.AddWithValue("@kayit_tarih",DateTime.Now);
        cmd.Parameters.AddWithValue("@tipi", dptipi.SelectedValue.ToString());
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
        cmd.Parameters.AddWithValue("@muayene_tarih",Convert.ToDateTime( txtmuayenetarihi.Text));
        cmd.Parameters.AddWithValue("@alis_tarih",Convert.ToDateTime( txttarih.Text));
        cmd.Parameters.AddWithValue("@sahip", dpsahip.SelectedValue.ToString());
        cmd.Parameters.AddWithValue("@arac_durum", dparacdurum.SelectedValue.ToString());
        string tarih = "01.01.1900";
        if (txtgcctarih.Text=="")
        {
            cmd.Parameters.AddWithValue("@gecici_tarih",Convert.ToDateTime(tarih));
        }
        else if (txtgcctarih.Text!= null)
            cmd.Parameters.AddWithValue("@gecici_tarih",Convert.ToDateTime(txtgcctarih.Text));
        
        cmd.Parameters.AddWithValue("@aciklama", txtaciklama.Text);
        int d = 0;
        cmd.Parameters.AddWithValue("@b", d);
        cmd.Parameters.AddWithValue("@y_anahtar", yedek.Checked);
        cmd.Parameters.AddWithValue("@c1", c1.Checked);
        cmd.Parameters.AddWithValue("@c2", c2.Checked);
        cmd.Parameters.AddWithValue("@c3", c3.Checked);
        cmd.Parameters.AddWithValue("@c4", c4.Checked);
        cmd.Parameters.AddWithValue("@c5", c5.Checked);
        cmd.Parameters.AddWithValue("@c6", c6.Checked);
        cmd.Parameters.AddWithValue("@c7", c7.Checked);
        cmd.Parameters.AddWithValue("@c8", c8.Checked);
        cmd.Parameters.AddWithValue("@c9", c1.Checked);
        cmd.Parameters.AddWithValue("@c10", c2.Checked);
        cmd.Parameters.AddWithValue("@c11", c3.Checked);
        cmd.Parameters.AddWithValue("@c12", c4.Checked);
        cmd.Parameters.AddWithValue("@c13", c5.Checked);
        cmd.Parameters.AddWithValue("@c14", c6.Checked);
        cmd.Parameters.AddWithValue("@c15", c7.Checked);
        cmd.Parameters.AddWithValue("@c16", c8.Checked);
        cmd.Parameters.AddWithValue("@c17", c1.Checked);
        cmd.Parameters.AddWithValue("@c18", c2.Checked);
        cmd.Parameters.AddWithValue("@c19", c3.Checked);
        cmd.Parameters.AddWithValue("@c20", c4.Checked);
        cmd.Parameters.AddWithValue("@c21", c5.Checked);
        cmd.Parameters.AddWithValue("@c22", c6.Checked);
        cmd.Parameters.AddWithValue("@c23", c7.Checked);
        cmd.Parameters.AddWithValue("@c24", c8.Checked);
        cmd.Parameters.AddWithValue("@c25", c7.Checked);
        cmd.Parameters.AddWithValue("@c26", c8.Checked);
        for (int i=0;i<ListBox1.Items.Count;i++ )
        {
            b += ListBox1.Items[i].ToString()+"<br/>";

        }
        cmd.Parameters.AddWithValue("@ekspertiz_raporu", b);
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
    protected void dpmodel_SelectedIndexChanged(object sender, EventArgs e)
    {

    }
    protected void c1_CheckedChanged(object sender, EventArgs e)
    {
        if (c1.Checked)
        {
            
        ListBox1.Items.Add("Arka Tampon Boyalı");
        }
        else
            ListBox1.Items.Remove("Arka Tampon Boyalı");
    }
    protected void txtsatısfiyat_TextChanged(object sender, EventArgs e)
    {
       
    }
    protected void txtalisfiyat_TextChanged(object sender, EventArgs e)
    {
        //decimal sayii = Convert.ToDecimal(txtalisfiyat.Text);
        //txtalisfiyat.Text = sayii.ToString("#,###");
    }
    protected void c2_CheckedChanged(object sender, EventArgs e)
    {
        if (c2.Checked)
        {
            ListBox1.Items.Add("Arka Tampon Değişmiş");
        }
        else
            ListBox1.Items.Remove("Arka Tampon Değişmiş");
        
    }
    protected void c3_CheckedChanged(object sender, EventArgs e)
    {
        if (c3.Checked)
        {

            ListBox1.Items.Add("Sağ Arka Çamurluk Boyalı");
        }
        else
            ListBox1.Items.Remove("Sağ Arka Çamurluk Boyalı");
        
    }
    protected void c4_CheckedChanged(object sender, EventArgs e)
    {
        if (c4.Checked)
        {

            ListBox1.Items.Add("Sağ Arka Çamurluk Değişmiş");
        }
        else
            ListBox1.Items.Remove("Sağ Arka Çamurluk Değişmiş");
        
    }
    protected void c5_CheckedChanged(object sender, EventArgs e)
    {
        if (c5.Checked)
        {

            ListBox1.Items.Add("Sol Arka Çamurluk Boyalı");
        }
        else
            ListBox1.Items.Remove("Sol Arka Çamurluk Boyalı");
        
    }
    protected void c6_CheckedChanged(object sender, EventArgs e)
    {
        if (c6.Checked)
        {

            ListBox1.Items.Add("Sol Arka Çamurluk Değişmiş");
        }
        else
            ListBox1.Items.Remove("Sol Arka Çamurluk Değişmiş");
        
    }
    protected void c19_CheckedChanged(object sender, EventArgs e)
    {
        if (c19.Checked)
        {

            ListBox1.Items.Add("Arka Kaput Boyalı");
        }
        else
            ListBox1.Items.Remove("Arka Kaput Boyalı");
        
    }
    protected void c20_CheckedChanged(object sender, EventArgs e)
    {
        if (c20.Checked)
        {

            ListBox1.Items.Add("Arka Kaput Değişmiş");
        }
        else
            ListBox1.Items.Remove("Arka Kaput Değişmiş");
        
    }
    protected void c7_CheckedChanged(object sender, EventArgs e)
    {
        if (c7.Checked)
        {

            ListBox1.Items.Add("Sağ Arka Kapı Boyalı");
        }
        else
            ListBox1.Items.Remove("Sağ Arka Kapı Boyalı");
        
    }
    protected void c8_CheckedChanged(object sender, EventArgs e)
    {
        if (c8.Checked)
        {

            ListBox1.Items.Add("Sağ Arka Kapı Değişmiş");
        }
        else
            ListBox1.Items.Remove("Sağ Arka Kapı Değişmiş");
        
    }
    protected void c9_CheckedChanged(object sender, EventArgs e)
    {
        if (c9.Checked)
        {

            ListBox1.Items.Add("Sol Arka Kapı Boyalı");
        }
        else
            ListBox1.Items.Remove("Sol Arka Kapı Boyalı");
        
    }
    protected void c10_CheckedChanged(object sender, EventArgs e)
    {
        if (c10.Checked)
        {

            ListBox1.Items.Add("Sol Arka Kapı Değişmiş");
        }
        else
            ListBox1.Items.Remove("Sol Arka Kapı Değişmiş");

    }
    protected void c21_CheckedChanged(object sender, EventArgs e)
    {

        if (c21.Checked)
        {

            ListBox1.Items.Add("Tavan Boyalı");
        }
        else
            ListBox1.Items.Remove("Tavan Boyalı");
        
    }
    protected void c22_CheckedChanged(object sender, EventArgs e)
    {
        if (c22.Checked)
        {

            ListBox1.Items.Add("Tavan Değişmiş");
        }
        else
            ListBox1.Items.Remove("Tavan Değişmiş");
        
    }
    protected void c11_CheckedChanged(object sender, EventArgs e)
    {
        if (c11.Checked)
        {

            ListBox1.Items.Add("Sağ Ön Kapı Boyalı");
        }
        else
            ListBox1.Items.Remove("Sağ Ön Kapı Boyalı");
        
    }
    protected void c12_CheckedChanged(object sender, EventArgs e)
    {
        if (c12.Checked)
        {

            ListBox1.Items.Add("Sağ Ön Kapı Değişmiş");
        }
        else
            ListBox1.Items.Remove("Sağ Ön Kapı Değişmiş");
        
    }
    protected void c13_CheckedChanged(object sender, EventArgs e)
    {
        if (c13.Checked)
        {

            ListBox1.Items.Add("Sol Ön Kapı Boyalı");
        }
        else
            ListBox1.Items.Remove("Sol Ön Kapı Boyalı");
        
    }
    protected void c14_CheckedChanged(object sender, EventArgs e)
    {
        if (c14.Checked)
        {

            ListBox1.Items.Add("Sol Ön Kapı Değişmiş");
        }
        else
            ListBox1.Items.Remove("Sol Ön Kapı Değişmiş");
        
    }
    protected void c15_CheckedChanged(object sender, EventArgs e)
    {
        if (c15.Checked)
        {

            ListBox1.Items.Add("Sağ Ön Çamurluk Boyalı");
        }
        else
            ListBox1.Items.Remove("Sağ Ön Çamurluk Boyalı");
        
    }
    protected void c16_CheckedChanged(object sender, EventArgs e)
    {
        if (c16.Checked)
        {

            ListBox1.Items.Add("Sağ Ön Çamurluk Değişmiş");
        }
        else
            ListBox1.Items.Remove("Sağ Ön Çamurluk Değişmiş");
    }
    protected void c17_CheckedChanged(object sender, EventArgs e)
    {
        if (c17.Checked)
        {

            ListBox1.Items.Add("Sol Ön Çamurluk Boyalı");
        }
        else
            ListBox1.Items.Remove("Sol Ön Çamurluk Boyalı");
    }
    protected void c18_CheckedChanged(object sender, EventArgs e)
    {
        if (c18.Checked)
        {

            ListBox1.Items.Add("Sol Ön Çamurluk Değişmiş");
        }
        else
            ListBox1.Items.Remove("Sol Ön Çamurluk Değişmiş");
    }
    protected void c23_CheckedChanged(object sender, EventArgs e)
    {
        if (c23.Checked)
        {

            ListBox1.Items.Add("Motor Kaputu Boyalı");
        }
        else
            ListBox1.Items.Remove("Motor Kaputu Boyalı");
    }
    protected void c24_CheckedChanged(object sender, EventArgs e)
    {
        if (c24.Checked)
        {

            ListBox1.Items.Add("Motor Kaputu Değişmiş");
        }
        else
            ListBox1.Items.Remove("Motor Kaputu Değişmiş");
    }
    protected void c25_CheckedChanged(object sender, EventArgs e)
    {
        if (c25.Checked)
        {

            ListBox1.Items.Add("Ön Tampon Boyalı");
        }
        else
            ListBox1.Items.Remove("Ön Tampon Boyalı");
    }
    protected void c26_CheckedChanged(object sender, EventArgs e)
    {
        if (c26.Checked)
        {

            ListBox1.Items.Add("Ön Tampon Değişmiş");
        }
        else
            ListBox1.Items.Remove("Ön Tampon Değişmiş");
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
    protected void ImageButton1_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/araclistesi.aspx");
    }
    protected void yedek_CheckedChanged(object sender, EventArgs e)
    {
        if (yedek.Checked)
        {

            ListBox1.Items.Add("Yedek Anahtarı Var");
        }
        else
            ListBox1.Items.Remove("Yedek Anahtarı Var");
    }
    protected void txthasar1_TextChanged(object sender, EventArgs e)
    {
    txttoplam.Text=(Convert.ToInt32(txthasar1.Text)+Convert.ToInt32(txthasar2.Text)+Convert.ToInt32(txthasar3.Text)+Convert.ToInt32(txthasar4.Text)+Convert.ToInt32(txthasar5.Text)).ToString();
    }
    protected void txthasar2_TextChanged(object sender, EventArgs e)
    {
        txttoplam.Text = (Convert.ToInt32(txthasar1.Text) + Convert.ToInt32(txthasar2.Text) + Convert.ToInt32(txthasar3.Text) + Convert.ToInt32(txthasar4.Text) + Convert.ToInt32(txthasar5.Text)).ToString();
    }
    protected void txthasar3_TextChanged(object sender, EventArgs e)
    {
        txttoplam.Text = (Convert.ToInt32(txthasar1.Text) + Convert.ToInt32(txthasar2.Text) + Convert.ToInt32(txthasar3.Text) + Convert.ToInt32(txthasar4.Text) + Convert.ToInt32(txthasar5.Text)).ToString();
    }
    protected void txthasar4_TextChanged(object sender, EventArgs e)
    {
        txttoplam.Text = (Convert.ToInt32(txthasar1.Text) + Convert.ToInt32(txthasar2.Text) + Convert.ToInt32(txthasar3.Text) + Convert.ToInt32(txthasar4.Text) + Convert.ToInt32(txthasar5.Text)).ToString();
    }
    protected void txthasar5_TextChanged(object sender, EventArgs e)
    {
        txttoplam.Text = (Convert.ToInt32(txthasar1.Text) + Convert.ToInt32(txthasar2.Text) + Convert.ToInt32(txthasar3.Text) + Convert.ToInt32(txthasar4.Text) + Convert.ToInt32(txthasar5.Text)).ToString();
    }
    protected void ImageButton5_Click1(object sender, ImageClickEventArgs e)
    {
        Response.Redirect("~/araclistesi.aspx");
    }
    protected void ImageButton6_Click(object sender, ImageClickEventArgs e)
    {
        Response.Redirect("~/modelekle.aspx");
    }
}