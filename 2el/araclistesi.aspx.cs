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
using System.ComponentModel;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;
using System.Web.UI.HtmlControls;
using System.IO;

public partial class araclistesi : System.Web.UI.Page
{
    public static int a;
    string connStr = WebConfigurationManager.ConnectionStrings["mydb"].ConnectionString;
    public string filtre = "";
    protected void Page_Load(object sender, EventArgs e)
    { 
        HttpCookie myCookies = Request.Cookies["myCookie"];
        
        if (!Page.IsPostBack)
        {
            //yetkisi 1 olan kullanıcının gormesiniistediklerimiz...
            if (myCookies["Yetki_Id"].ToString() == "1")
            {
                gaktif.Visible = true;
                godeme.Visible = false;
                grezerve.Visible = false;
                gyonetim.Visible = false;
                gfiltre.Visible = false;
                ImageButton1.Visible = false;
                ImageButton3.Visible = false;
                Label1.Text = myCookies["kullanici_ad"].ToString() + "[Çıkış]";
            }
            //yetkisi 2 olan kullanıcının gormesiniistediklerimiz...
            else if (myCookies["Yetki_Id"].ToString() == "2")
            {
                gaktif.Visible = false;
                godeme.Visible = false;
                grezerve.Visible = true;
                gyonetim.Visible = false;

                gfiltre.Visible = false;
                ImageButton1.Visible = false;
                ImageButton3.Visible = true;
                Label1.Text = myCookies["kullanici_ad"].ToString() + "[Çıkış]";
            }
            //yetkisi 3 olan kullanıcının gormesiniistediklerimiz...
            else if (myCookies["Yetki_Id"].ToString() == "3")
            {
                gaktif.Visible = false;
                godeme.Visible = true;
                grezerve.Visible = false;
                gfiltre.Visible = false;
                gyonetim.Visible = false;

                ImageButton1.Visible = false;
                ImageButton3.Visible = true;
                Label1.Text = myCookies["kullanici_ad"].ToString() + "[Çıkış]";
            }
            //yetkisi 4 olan kullanıcının gormesiniistediklerimiz...
            else if (myCookies["Yetki_Id"].ToString() == "4")
            {
                gaktif.Visible = true;
                godeme.Visible = false;
                grezerve.Visible = false;
                gyonetim.Visible = false;
                gfiltre.Visible = false;
                ImageButton1.Visible = true;
                ImageButton3.Visible = false;
                Label1.Text = myCookies["kullanici_ad"].ToString() + "[Çıkış]";
            }
            //yetkisi 5 olan kullanıcının gitmesi yer...
            else if (myCookies["Yetki_Id"].ToString() == "5")
            {
                Response.Redirect("~/noter.aspx");
            }
                //ekleme yapılan yer
            else if (myCookies["Yetki_Id"].ToString() == "6")
            {
                gaktif.Visible = false;
                godeme.Visible = false;
                grezerve.Visible = true;
                gfiltre.Visible = false;
                ImageButton1.Visible = false;
                ImageButton3.Visible = true;
                Label1.Text = myCookies["kullanici_ad"].ToString() + "[Çıkış]";
            }
            else
                Response.Redirect("http://2el.aldatmazportal.com/Default.aspx");


            //markayı lısteletme...
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

    protected void LinkButton1_Click(object sender, EventArgs e)
    {
       

    }
   
    protected void LinkButton1_Click1(object sender, EventArgs e)
    {
      

      
    }
  
    protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
    {
        int selectedRowIndex;
        selectedRowIndex = gaktif.SelectedIndex;
        //Seçilen verinin ad ve soyad bilgisini alacağımız için ilgili değişkenleri tanımladım. 
        GridViewRow row = gaktif.Rows[selectedRowIndex];

        //label kontrolüme verilerimi yazdırdım.
        a = Convert.ToInt32( row.Cells[2].Text);

        HttpCookie myCookiee = new HttpCookie("myCookiee");
        myCookiee["durumu"] = row.Cells[17].Text;
        myCookiee.Expires = DateTime.Now.AddDays(1); // cookiesimiz 1 saat kalsın dedik.
        Response.Cookies.Add(myCookiee); // cookies ekledik
        Response.Redirect("aracdetay.aspx?aracid=" + a + "");

    }
  

    protected void dpdurum_SelectedIndexChanged(object sender, EventArgs e)
    {
       
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
    protected void dpsatıs_SelectedIndexChanged(object sender, EventArgs e)
    {
       
    }

    protected void dparacdurum_SelectedIndexChanged(object sender, EventArgs e)
    {
       
    }
    protected void dppark_SelectedIndexChanged(object sender, EventArgs e)
    {
        
    }
    protected void txtmusteriad_TextChanged(object sender, EventArgs e)
    {
      
    }

    protected void txtsaseno_TextChanged(object sender, EventArgs e)
    {
       
    }
    protected void txtmodelyılı2_TextChanged(object sender, EventArgs e)
    {
      
    }
    protected void txtfiyat2_TextChanged(object sender, EventArgs e)
    {
        

    }
    protected void txttarih2_TextChanged(object sender, EventArgs e)
    {
       
    }

    public DataTable durum_tarihtip_listele(string tarihtip,DateTime tarih1,DateTime tarih2, string durum)
    {
        string c = "ww";
        SqlConnection con = new SqlConnection(connStr);
        SqlCommand cmd = new SqlCommand("filtreler", con);

        cmd.Parameters.AddWithValue("@durum", durum);
        cmd.Parameters.AddWithValue("@plaka", c);
        cmd.Parameters.AddWithValue("@arama", "durum_tarihtip");
        cmd.Parameters.AddWithValue("@model", c);
        cmd.Parameters.AddWithValue("@modelyili", c);
        cmd.Parameters.AddWithValue("@marka", c);
        cmd.Parameters.AddWithValue("@a", tarihtip);
        cmd.Parameters.AddWithValue("@tipi",c );
        cmd.Parameters.AddWithValue("@tarih1", tarih1);
        cmd.Parameters.AddWithValue("@tarih2", tarih2);
        cmd.Parameters.AddWithValue("@aracdurum", c);
        cmd.Parameters.AddWithValue("@sahip", c);
        cmd.Parameters.AddWithValue("@musteri", c);
        cmd.Parameters.AddWithValue("@satıstemsil", c);
        cmd.Parameters.AddWithValue("@park", c);
        cmd.CommandType = CommandType.StoredProcedure;
        SqlParameter parm = new SqlParameter("@return", SqlDbType.Int);
        parm.Direction = ParameterDirection.ReturnValue;

        cmd.Parameters.Add(parm);
        con.Open();

        DataTable dtarac = new DataTable();
        SqlDataReader dr;
        dr = cmd.ExecuteReader();
        dtarac.Load(dr);
        con.Close();
        int id = Convert.ToInt32(parm.Value);
        lblms.Text = "";
        lblms.Text = "Tabloda '" + id + "' Kayıt Bulunmaktadır.";
        ViewState["dt"] = dtarac;
        ViewState["sort"] = "Asc";
        return dtarac;

    }

    public DataTable plaka_durum_listele(string plaka, string durum)
    {
        string c = "ww";
        SqlConnection con = new SqlConnection(connStr);
        SqlCommand cmd = new SqlCommand("filtreler", con);

        cmd.Parameters.AddWithValue("@durum", durum);
        cmd.Parameters.AddWithValue("@plaka", plaka);
        cmd.Parameters.AddWithValue("@arama", "plaka_durum");
        cmd.Parameters.AddWithValue("@model", c);
        cmd.Parameters.AddWithValue("@modelyili", c);
        cmd.Parameters.AddWithValue("@marka", c);
        cmd.Parameters.AddWithValue("@a", c);
        cmd.Parameters.AddWithValue("@sahip", c);
        cmd.Parameters.AddWithValue("@tipi", c);
        cmd.Parameters.AddWithValue("@tarih1", "01.01.2015");
        cmd.Parameters.AddWithValue("@tarih2", "01.01.2015");
        cmd.Parameters.AddWithValue("@aracdurum", c);
        cmd.Parameters.AddWithValue("@musteri", c);
        cmd.Parameters.AddWithValue("@satıstemsil", c);
        cmd.Parameters.AddWithValue("@park", c);
        cmd.CommandType = CommandType.StoredProcedure;
        SqlParameter parm = new SqlParameter("@return", SqlDbType.Int);
        parm.Direction = ParameterDirection.ReturnValue;

        cmd.Parameters.Add(parm);
        con.Open();

        DataTable dtarac = new DataTable();
        SqlDataReader dr;
        dr = cmd.ExecuteReader();
        dtarac.Load(dr);
        con.Close();
        int id = Convert.ToInt32(parm.Value);
        lblms.Text = "";
        lblms.Text = "Tabloda '" + id + "' Kayıt Bulunmaktadır.";
        ViewState["dt"] = dtarac;
        ViewState["sort"] = "Asc";
        return dtarac;
        
    }
    public DataTable marka_listele(string marka)
    {
        string c = "ww";
        SqlConnection con = new SqlConnection(connStr);
        SqlCommand cmd = new SqlCommand("filtreler", con);
        cmd.Parameters.AddWithValue("@marka", marka);
        cmd.Parameters.AddWithValue("@arama", "marka");
        cmd.Parameters.AddWithValue("@model", c);
        cmd.Parameters.AddWithValue("@modelyili", c);
        cmd.Parameters.AddWithValue("@plaka", c);
        cmd.Parameters.AddWithValue("@a", c);
        cmd.Parameters.AddWithValue("@tipi", c);
        cmd.Parameters.AddWithValue("@sahip", c);
        cmd.Parameters.AddWithValue("@tarih1", "01.01.2015");
        cmd.Parameters.AddWithValue("@tarih2", "01.01.2015");
        cmd.Parameters.AddWithValue("@aracdurum", c);
        cmd.Parameters.AddWithValue("@musteri", c);
        cmd.Parameters.AddWithValue("@satıstemsil", c);
        cmd.Parameters.AddWithValue("@durum", c);
        cmd.Parameters.AddWithValue("@park", c);
        cmd.CommandType = CommandType.StoredProcedure;
        SqlParameter parm = new SqlParameter("@return", SqlDbType.Int);
        parm.Direction = ParameterDirection.ReturnValue;

        cmd.Parameters.Add(parm);
        con.Open();

        DataTable dtarac = new DataTable();
        SqlDataReader dr;
        dr = cmd.ExecuteReader();
        dtarac.Load(dr);
        con.Close();
        int id = Convert.ToInt32(parm.Value);
        lblms.Text = "";
        lblms.Text = "Tabloda '" + id + "' Kayıt Bulunmaktadır.";
        ViewState["dt"] = dtarac;
        ViewState["sort"] = "Asc";
        return dtarac;



    }
    public DataTable markamodel_listele(string marka,string model)
    {
        string c = "ww";
        SqlConnection con = new SqlConnection(connStr);
        SqlCommand cmd = new SqlCommand("filtreler", con);
        cmd.Parameters.AddWithValue("@marka", marka);
        cmd.Parameters.AddWithValue("@arama", "markamodel");
        cmd.Parameters.AddWithValue("@model", model);
        cmd.Parameters.AddWithValue("@modelyili", c);
        cmd.Parameters.AddWithValue("@plaka", c);
        cmd.Parameters.AddWithValue("@a", c);
        cmd.Parameters.AddWithValue("@tipi", c);
        cmd.Parameters.AddWithValue("@sahip", c);
        cmd.Parameters.AddWithValue("@tarih1", "01.01.2015");
        cmd.Parameters.AddWithValue("@tarih2", "01.01.2015");
        cmd.Parameters.AddWithValue("@aracdurum", c);
        cmd.Parameters.AddWithValue("@musteri", c);
        cmd.Parameters.AddWithValue("@satıstemsil", c);
        cmd.Parameters.AddWithValue("@durum", c);
        cmd.Parameters.AddWithValue("@park", c);
        cmd.CommandType = CommandType.StoredProcedure;
        SqlParameter parm = new SqlParameter("@return", SqlDbType.Int);
        parm.Direction = ParameterDirection.ReturnValue;

        cmd.Parameters.Add(parm);
        con.Open();

        DataTable dtarac = new DataTable();
        SqlDataReader dr;
        dr = cmd.ExecuteReader();
        dtarac.Load(dr);
        con.Close();
        int id = Convert.ToInt32(parm.Value);
        lblms.Text = "";
        lblms.Text = "Tabloda '" + id + "' Kayıt Bulunmaktadır.";
        ViewState["dt"] = dtarac;
        ViewState["sort"] = "Asc";
        return dtarac;



    }

    public DataTable model_listele(string model)
    {
        string c = "ww";
        SqlConnection con = new SqlConnection(connStr);
        SqlCommand cmd = new SqlCommand("filtreler", con);
        cmd.Parameters.AddWithValue("@model", model);
        cmd.Parameters.AddWithValue("@arama", "model");
        cmd.Parameters.AddWithValue("@marka", c);
        cmd.Parameters.AddWithValue("@modelyili", c);
        cmd.Parameters.AddWithValue("@plaka", c);
        cmd.Parameters.AddWithValue("@a", c);
        cmd.Parameters.AddWithValue("@tipi", c);
        cmd.Parameters.AddWithValue("@sahip", c);
        cmd.Parameters.AddWithValue("@tarih1", "01.01.2015");
        cmd.Parameters.AddWithValue("@tarih2", "01.01.2015");
        cmd.Parameters.AddWithValue("@aracdurum", c);
        cmd.Parameters.AddWithValue("@musteri", c);
        cmd.Parameters.AddWithValue("@satıstemsil", c);
        cmd.Parameters.AddWithValue("@durum", c);
        cmd.Parameters.AddWithValue("@park", c);
        cmd.CommandType = CommandType.StoredProcedure;
        SqlParameter parm = new SqlParameter("@return", SqlDbType.Int);
        parm.Direction = ParameterDirection.ReturnValue;

        cmd.Parameters.Add(parm);
        con.Open();

        DataTable dtarac = new DataTable();
        SqlDataReader dr;
        dr = cmd.ExecuteReader();
        dtarac.Load(dr);
        con.Close();
        int id = Convert.ToInt32(parm.Value);
        lblms.Text = "";
        lblms.Text = "Tabloda '" + id + "' Kayıt Bulunmaktadır.";
        ViewState["dt"] = dtarac;
        ViewState["sort"] = "Asc";
        return dtarac;



    }
    public DataTable modelyil_listele(string modelyil)
    {
        string c = "ww";
        SqlConnection con = new SqlConnection(connStr);
        SqlCommand cmd = new SqlCommand("filtreler", con);
        cmd.Parameters.AddWithValue("@modelyili", modelyil);
        cmd.Parameters.AddWithValue("@arama", "modelyil");
        cmd.Parameters.AddWithValue("@marka", c);
        cmd.Parameters.AddWithValue("@model", c);
        cmd.Parameters.AddWithValue("@plaka", c); 
        cmd.Parameters.AddWithValue("@tipi", c);
        cmd.Parameters.AddWithValue("@a", c);
        cmd.Parameters.AddWithValue("@sahip", c);
        cmd.Parameters.AddWithValue("@tarih1", "01.01.2015");
        cmd.Parameters.AddWithValue("@tarih2", "01.01.2015");
        cmd.Parameters.AddWithValue("@aracdurum", c);
        cmd.Parameters.AddWithValue("@musteri", c);
        cmd.Parameters.AddWithValue("@satıstemsil", c);
        cmd.Parameters.AddWithValue("@durum", c);
        cmd.Parameters.AddWithValue("@park", c);
        cmd.CommandType = CommandType.StoredProcedure;
        SqlParameter parm = new SqlParameter("@return", SqlDbType.Int);
        parm.Direction = ParameterDirection.ReturnValue;

        cmd.Parameters.Add(parm);
        con.Open();

        DataTable dtarac = new DataTable();
        SqlDataReader dr;
        dr = cmd.ExecuteReader();
        dtarac.Load(dr);
        con.Close();
        int id = Convert.ToInt32(parm.Value);
        lblms.Text = "";
        lblms.Text = "Tabloda '" + id + "' Kayıt Bulunmaktadır.";
        ViewState["dt"] = dtarac;
        ViewState["sort"] = "Asc";
        return dtarac;



    }
    public DataTable tipi_listele(string tipi)
    {
        string c = "ww";
        SqlConnection con = new SqlConnection(connStr);
        SqlCommand cmd = new SqlCommand("filtreler", con);
        cmd.Parameters.AddWithValue("@tipi", tipi);
        cmd.Parameters.AddWithValue("@arama", "tipi");
        cmd.Parameters.AddWithValue("@modelyili", c);
        cmd.Parameters.AddWithValue("@marka", c);
        cmd.Parameters.AddWithValue("@model", c);
        cmd.Parameters.AddWithValue("@plaka", c);
        cmd.Parameters.AddWithValue("@sahip", c);
        cmd.Parameters.AddWithValue("@a", c);
        cmd.Parameters.AddWithValue("@tarih1", "01.01.2015");
        cmd.Parameters.AddWithValue("@tarih2", "01.01.2015");
        cmd.Parameters.AddWithValue("@aracdurum", c);
        cmd.Parameters.AddWithValue("@musteri", c);
        cmd.Parameters.AddWithValue("@satıstemsil", c);
        cmd.Parameters.AddWithValue("@durum", c);
        cmd.Parameters.AddWithValue("@park", c);
        cmd.CommandType = CommandType.StoredProcedure;
        SqlParameter parm = new SqlParameter("@return", SqlDbType.Int);
        parm.Direction = ParameterDirection.ReturnValue;

        cmd.Parameters.Add(parm);
        con.Open();

        DataTable dtarac = new DataTable();
        SqlDataReader dr;
        dr = cmd.ExecuteReader();
        dtarac.Load(dr);
        con.Close();
        int id = Convert.ToInt32(parm.Value);
        lblms.Text = "";
        lblms.Text = "Tabloda '" + id + "' Kayıt Bulunmaktadır.";
        ViewState["dt"] = dtarac;
        ViewState["sort"] = "Asc";
        return dtarac;



    }
    public DataTable sahipdurum_listele(string sahip,string durum)
    {
        string c = "ww";
        SqlConnection con = new SqlConnection(connStr);
        SqlCommand cmd = new SqlCommand("filtreler", con);
        cmd.Parameters.AddWithValue("@aracdurum", c);
        cmd.Parameters.AddWithValue("@arama", "sahip_durum");
        cmd.Parameters.AddWithValue("@marka", c);
        cmd.Parameters.AddWithValue("@model", c);
        cmd.Parameters.AddWithValue("@modelyili", c);
        cmd.Parameters.AddWithValue("@sahip", sahip);
        cmd.Parameters.AddWithValue("@plaka", c);
        cmd.Parameters.AddWithValue("@tarih1", "01.01.2015");
        cmd.Parameters.AddWithValue("@tarih2", "01.01.2015");
        cmd.Parameters.AddWithValue("@satıstemsil", c);
        cmd.Parameters.AddWithValue("@durum", durum);
        cmd.Parameters.AddWithValue("@tipi", c);
        cmd.Parameters.AddWithValue("@musteri", c);
        cmd.Parameters.AddWithValue("@a", c);
        cmd.Parameters.AddWithValue("@park", c);
        cmd.CommandType = CommandType.StoredProcedure;
        SqlParameter parm = new SqlParameter("@return", SqlDbType.Int);
        parm.Direction = ParameterDirection.ReturnValue;

        cmd.Parameters.Add(parm);
        con.Open();

        DataTable dtarac = new DataTable();
        SqlDataReader dr;
        dr = cmd.ExecuteReader();
        dtarac.Load(dr);
        con.Close();
        int id = Convert.ToInt32(parm.Value);
        lblms.Text = "";
        lblms.Text = "Tabloda '" + id + "' Kayıt Bulunmaktadır.";
        ViewState["dt"] = dtarac;
        ViewState["sort"] = "Asc";
        return dtarac;

    }

    public DataTable markadurum_listele(string marka, string durum)
    {
        string c = "ww";
        SqlConnection con = new SqlConnection(connStr);
        SqlCommand cmd = new SqlCommand("filtreler", con);
        cmd.Parameters.AddWithValue("@aracdurum", c);
        cmd.Parameters.AddWithValue("@arama", "marka_durum");
        cmd.Parameters.AddWithValue("@marka", marka);
        cmd.Parameters.AddWithValue("@model", c);
        cmd.Parameters.AddWithValue("@modelyili", c);
        cmd.Parameters.AddWithValue("@sahip", c);
        cmd.Parameters.AddWithValue("@plaka", c);
        cmd.Parameters.AddWithValue("@tarih1", "01.01.2015");
        cmd.Parameters.AddWithValue("@tarih2", "01.01.2015");
        cmd.Parameters.AddWithValue("@satıstemsil", c);
        cmd.Parameters.AddWithValue("@durum", durum);
        cmd.Parameters.AddWithValue("@tipi", c);
        cmd.Parameters.AddWithValue("@musteri", c);
        cmd.Parameters.AddWithValue("@a", c);
        cmd.Parameters.AddWithValue("@park", c);
        cmd.CommandType = CommandType.StoredProcedure;
        SqlParameter parm = new SqlParameter("@return", SqlDbType.Int);
        parm.Direction = ParameterDirection.ReturnValue;

        cmd.Parameters.Add(parm);
        con.Open();

        DataTable dtarac = new DataTable();
        SqlDataReader dr;
        dr = cmd.ExecuteReader();
        dtarac.Load(dr);
        con.Close();
        int id = Convert.ToInt32(parm.Value);
        lblms.Text = "";
        lblms.Text = "Tabloda '" + id + "' Kayıt Bulunmaktadır.";
        ViewState["dt"] = dtarac;
        ViewState["sort"] = "Asc";
        return dtarac;

    }
    public DataTable tipidurum_listele(string tipi,string durum)
    {
        string c = "ww";
        SqlConnection con = new SqlConnection(connStr);
        SqlCommand cmd = new SqlCommand("filtreler", con);
        cmd.Parameters.AddWithValue("@tipi", tipi);
        cmd.Parameters.AddWithValue("@arama", "tipi_durum");
        cmd.Parameters.AddWithValue("@modelyili", c);
        cmd.Parameters.AddWithValue("@marka", c);
        cmd.Parameters.AddWithValue("@model", c);
        cmd.Parameters.AddWithValue("@plaka", c);
        cmd.Parameters.AddWithValue("@sahip", c);
        cmd.Parameters.AddWithValue("@a", c);
        cmd.Parameters.AddWithValue("@tarih1", "01.01.2015");
        cmd.Parameters.AddWithValue("@tarih2", "01.01.2015");
        cmd.Parameters.AddWithValue("@aracdurum", c);
        cmd.Parameters.AddWithValue("@musteri", c);
        cmd.Parameters.AddWithValue("@satıstemsil", c);
        cmd.Parameters.AddWithValue("@durum", durum);
        cmd.Parameters.AddWithValue("@park", c);
        cmd.CommandType = CommandType.StoredProcedure;
        SqlParameter parm = new SqlParameter("@return", SqlDbType.Int);
        parm.Direction = ParameterDirection.ReturnValue;

        cmd.Parameters.Add(parm);
        con.Open();

        DataTable dtarac = new DataTable();
        SqlDataReader dr;
        dr = cmd.ExecuteReader();
        dtarac.Load(dr);
        con.Close();
        int id = Convert.ToInt32(parm.Value);
        lblms.Text = "";
        lblms.Text = "Tabloda '" + id + "' Kayıt Bulunmaktadır.";
        ViewState["dt"] = dtarac;
        ViewState["sort"] = "Asc";
        return dtarac;



    }
    public DataTable plaka_listele(string plaka)
    {
        string c = "ww";
        SqlConnection con = new SqlConnection(connStr);
        SqlCommand cmd = new SqlCommand("filtreler", con);
        cmd.Parameters.AddWithValue("@plaka", plaka);
        cmd.Parameters.AddWithValue("@arama", "plaka");
        cmd.Parameters.AddWithValue("@marka", c);
        cmd.Parameters.AddWithValue("@model", c);
        cmd.Parameters.AddWithValue("@modelyili", c);
        cmd.Parameters.AddWithValue("@a", c);
        cmd.Parameters.AddWithValue("@tipi", c);
        cmd.Parameters.AddWithValue("@sahip", c);
        cmd.Parameters.AddWithValue("@tarih1", "01.01.2015");
        cmd.Parameters.AddWithValue("@tarih2", "01.01.2015");
        cmd.Parameters.AddWithValue("@aracdurum", c);
        cmd.Parameters.AddWithValue("@musteri", c);
        cmd.Parameters.AddWithValue("@satıstemsil", c);
        cmd.Parameters.AddWithValue("@durum", c);
        cmd.Parameters.AddWithValue("@park", c);
        cmd.CommandType = CommandType.StoredProcedure;
        SqlParameter parm = new SqlParameter("@return", SqlDbType.Int);
        parm.Direction = ParameterDirection.ReturnValue;

        cmd.Parameters.Add(parm);
        con.Open();

        DataTable dtarac = new DataTable();
        SqlDataReader dr;
        dr = cmd.ExecuteReader();
        dtarac.Load(dr);
        con.Close();
        int id = Convert.ToInt32(parm.Value);
        lblms.Text = "";
        lblms.Text = "Tabloda '" + id + "' Kayıt Bulunmaktadır.";
        ViewState["dt"] = dtarac;
        ViewState["sort"] = "Asc";
        return dtarac;

        

    }
    public DataTable tarih_listele(string tarihtip,DateTime tarih1,DateTime tarih2)
    {
        string c = "ww";
        SqlConnection con = new SqlConnection(connStr);
        SqlCommand cmd = new SqlCommand("filtreler", con);
        cmd.Parameters.AddWithValue("@a", tarihtip);
        cmd.Parameters.AddWithValue("@arama", "tarihtip");
        cmd.Parameters.AddWithValue("@marka", c);
        cmd.Parameters.AddWithValue("@model", c);
        cmd.Parameters.AddWithValue("@modelyili", c);
        cmd.Parameters.AddWithValue("@plaka", c);
        cmd.Parameters.AddWithValue("@sahip", c);
        cmd.Parameters.AddWithValue("@tarih1",tarih1);
        cmd.Parameters.AddWithValue("@tarih2", tarih2);
        cmd.Parameters.AddWithValue("@aracdurum", c);
        cmd.Parameters.AddWithValue("@musteri", c);
        cmd.Parameters.AddWithValue("@satıstemsil", c);
        cmd.Parameters.AddWithValue("@tipi", c);
        cmd.Parameters.AddWithValue("@durum", c);
        cmd.Parameters.AddWithValue("@park", c);
        cmd.CommandType = CommandType.StoredProcedure;
        SqlParameter parm = new SqlParameter("@return", SqlDbType.Int);
        parm.Direction = ParameterDirection.ReturnValue;

        cmd.Parameters.Add(parm);
        con.Open();

        DataTable dtarac = new DataTable();
        SqlDataReader dr;
        dr = cmd.ExecuteReader();
        dtarac.Load(dr);
        con.Close();
        int id = Convert.ToInt32(parm.Value);
        lblms.Text = "";
        lblms.Text = "Tabloda '" + id + "' Kayıt Bulunmaktadır.";
        ViewState["dt"] = dtarac;
        ViewState["sort"] = "Asc";
        return dtarac;

    }
    public DataTable tarihkullanici_listele(string tarihtip, DateTime tarih1, DateTime tarih2,string kullanici)
    {
        string c = "ww";
        SqlConnection con = new SqlConnection(connStr);
        SqlCommand cmd = new SqlCommand("filtreler", con);
        cmd.Parameters.AddWithValue("@a", tarihtip);
        cmd.Parameters.AddWithValue("@arama", "tarihtip_kullanici");
        cmd.Parameters.AddWithValue("@marka", c);
        cmd.Parameters.AddWithValue("@model", c);
        cmd.Parameters.AddWithValue("@modelyili", c);
        cmd.Parameters.AddWithValue("@plaka", c);
        cmd.Parameters.AddWithValue("@sahip", c);
        cmd.Parameters.AddWithValue("@tarih1", tarih1);
        cmd.Parameters.AddWithValue("@tarih2", tarih2);
        cmd.Parameters.AddWithValue("@aracdurum", c);
        cmd.Parameters.AddWithValue("@musteri", c);
        cmd.Parameters.AddWithValue("@satıstemsil", kullanici);
        cmd.Parameters.AddWithValue("@tipi", c);
        cmd.Parameters.AddWithValue("@durum", c);
        cmd.Parameters.AddWithValue("@park", c);
        cmd.CommandType = CommandType.StoredProcedure;
        SqlParameter parm = new SqlParameter("@return", SqlDbType.Int);
        parm.Direction = ParameterDirection.ReturnValue;

        cmd.Parameters.Add(parm);
        con.Open();

        DataTable dtarac = new DataTable();
        SqlDataReader dr;
        dr = cmd.ExecuteReader();
        dtarac.Load(dr);
        con.Close();
        int id = Convert.ToInt32(parm.Value);
        lblms.Text = "";
        lblms.Text = "Tabloda '" + id + "' Kayıt Bulunmaktadır.";
        ViewState["dt"] = dtarac;
        ViewState["sort"] = "Asc";
        return dtarac;

    }
    public DataTable tarihdurumkullanici_listele(string tarihtip, DateTime tarih1, DateTime tarih2, string kullanici,string durum)
    {
        string c = "ww";
        SqlConnection con = new SqlConnection(connStr);
        SqlCommand cmd = new SqlCommand("filtreler", con);
        cmd.Parameters.AddWithValue("@a", tarihtip);
        cmd.Parameters.AddWithValue("@arama", "tarihtip_durum_kullanici");
        cmd.Parameters.AddWithValue("@marka", c);
        cmd.Parameters.AddWithValue("@model", c);
        cmd.Parameters.AddWithValue("@modelyili", c);
        cmd.Parameters.AddWithValue("@plaka", c);
        cmd.Parameters.AddWithValue("@sahip", c);
        cmd.Parameters.AddWithValue("@tarih1", tarih1);
        cmd.Parameters.AddWithValue("@tarih2", tarih2);
        cmd.Parameters.AddWithValue("@aracdurum", c);
        cmd.Parameters.AddWithValue("@musteri", c);
        cmd.Parameters.AddWithValue("@satıstemsil", kullanici);
        cmd.Parameters.AddWithValue("@tipi", c);
        cmd.Parameters.AddWithValue("@durum", durum);
        cmd.Parameters.AddWithValue("@park", c);
        cmd.CommandType = CommandType.StoredProcedure;
        SqlParameter parm = new SqlParameter("@return", SqlDbType.Int);
        parm.Direction = ParameterDirection.ReturnValue;

        cmd.Parameters.Add(parm);
        con.Open();

        DataTable dtarac = new DataTable();
        SqlDataReader dr;
        dr = cmd.ExecuteReader();
        dtarac.Load(dr);
        con.Close();
        int id = Convert.ToInt32(parm.Value);
        lblms.Text = "";
        lblms.Text = "Tabloda '" + id + "' Kayıt Bulunmaktadır.";
        ViewState["dt"] = dtarac;
        ViewState["sort"] = "Asc";
        return dtarac;

    }
    public DataTable durum_listele(string durum)
    {
        string c = "ww";
        SqlConnection con = new SqlConnection(connStr);
        SqlCommand cmd = new SqlCommand("filtreler", con);
        cmd.Parameters.AddWithValue("@durum", durum);
        cmd.Parameters.AddWithValue("@arama", "durum");
        cmd.Parameters.AddWithValue("@marka", c);
        cmd.Parameters.AddWithValue("@model", c);
        cmd.Parameters.AddWithValue("@modelyili", c);
        cmd.Parameters.AddWithValue("@plaka", c);
        cmd.Parameters.AddWithValue("@sahip", c);
        cmd.Parameters.AddWithValue("@tarih1", "01.01.2015");
        cmd.Parameters.AddWithValue("@tarih2", "01.01.2015");
        cmd.Parameters.AddWithValue("@aracdurum", c);
        cmd.Parameters.AddWithValue("@musteri", c);
        cmd.Parameters.AddWithValue("@satıstemsil", c);
        cmd.Parameters.AddWithValue("@a", c);
        cmd.Parameters.AddWithValue("@tipi", c);
        cmd.Parameters.AddWithValue("@park", c);
        cmd.CommandType = CommandType.StoredProcedure;
        SqlParameter parm = new SqlParameter("@return", SqlDbType.Int);
        parm.Direction = ParameterDirection.ReturnValue;

        cmd.Parameters.Add(parm);
        con.Open();

        DataTable dtarac = new DataTable();
        SqlDataReader dr;
        dr = cmd.ExecuteReader();
        dtarac.Load(dr);
        con.Close();
        int id = Convert.ToInt32(parm.Value);
        lblms.Text = "";
        lblms.Text = "Tabloda '" + id + "' Kayıt Bulunmaktadır.";
        ViewState["dt"] = dtarac;
        ViewState["sort"] = "Asc";
        return dtarac;

    }

    public DataTable sahip_listele(string sahip)
    {
        string c = "ww";
        SqlConnection con = new SqlConnection(connStr);
        SqlCommand cmd = new SqlCommand("filtreler", con);
        cmd.Parameters.AddWithValue("@durum", c);
        cmd.Parameters.AddWithValue("@arama", "sahip");
        cmd.Parameters.AddWithValue("@marka", c);
        cmd.Parameters.AddWithValue("@model", c);
        cmd.Parameters.AddWithValue("@modelyili", c);
        cmd.Parameters.AddWithValue("@plaka", c);
        cmd.Parameters.AddWithValue("@sahip", sahip);
        cmd.Parameters.AddWithValue("@tarih1", "01.01.2015");
        cmd.Parameters.AddWithValue("@tarih2", "01.01.2015");
        cmd.Parameters.AddWithValue("@aracdurum", c);
        cmd.Parameters.AddWithValue("@musteri", c);
        cmd.Parameters.AddWithValue("@satıstemsil", c);
        cmd.Parameters.AddWithValue("@a", c);
        cmd.Parameters.AddWithValue("@tipi", c);
        cmd.Parameters.AddWithValue("@park", c);
        cmd.CommandType = CommandType.StoredProcedure;
        SqlParameter parm = new SqlParameter("@return", SqlDbType.Int);
        parm.Direction = ParameterDirection.ReturnValue;

        cmd.Parameters.Add(parm);
        con.Open();

        DataTable dtarac = new DataTable();
        SqlDataReader dr;
        dr = cmd.ExecuteReader();
        dtarac.Load(dr);
        con.Close();
        int id = Convert.ToInt32(parm.Value);
        lblms.Text = "";
        lblms.Text = "Tabloda '" + id + "' Kayıt Bulunmaktadır.";
        ViewState["dt"] = dtarac;
        ViewState["sort"] = "Asc";
        return dtarac;

    }
    public DataTable musteriad_listele(string musteriad)
    {
        string c = "ww";
        SqlConnection con = new SqlConnection(connStr);
        SqlCommand cmd = new SqlCommand("filtreler", con);
        cmd.Parameters.AddWithValue("@musteri", musteriad);
        cmd.Parameters.AddWithValue("@arama", "musteriad");
        cmd.Parameters.AddWithValue("@marka", c);
        cmd.Parameters.AddWithValue("@sahip", c);
        cmd.Parameters.AddWithValue("@model", c);
        cmd.Parameters.AddWithValue("@modelyili", c);
        cmd.Parameters.AddWithValue("@tipi", c);
        cmd.Parameters.AddWithValue("@plaka", c);
        cmd.Parameters.AddWithValue("@tarih1", "01.01.2015");
        cmd.Parameters.AddWithValue("@tarih2", "01.01.2015");
        cmd.Parameters.AddWithValue("@aracdurum", c);
        cmd.Parameters.AddWithValue("@durum", c);
        cmd.Parameters.AddWithValue("@satıstemsil", c);
        cmd.Parameters.AddWithValue("@a", c);
        cmd.Parameters.AddWithValue("@park", c);
        cmd.CommandType = CommandType.StoredProcedure;
        SqlParameter parm = new SqlParameter("@return", SqlDbType.Int);
        parm.Direction = ParameterDirection.ReturnValue;

        cmd.Parameters.Add(parm);
        con.Open();

        DataTable dtarac = new DataTable();
        SqlDataReader dr;
        dr = cmd.ExecuteReader();
        dtarac.Load(dr);
        con.Close();
        int id = Convert.ToInt32(parm.Value);
        lblms.Text = "";
        lblms.Text = "Tabloda '" + id + "' Kayıt Bulunmaktadır.";
        ViewState["dt"] = dtarac;
        ViewState["sort"] = "Asc";
        return dtarac;

    }
    public DataTable satıs_listele(string satıs)
    {
        string c = "ww";
        SqlConnection con = new SqlConnection(connStr);
        SqlCommand cmd = new SqlCommand("filtreler", con);
        cmd.Parameters.AddWithValue("@satıstemsil", satıs);
        cmd.Parameters.AddWithValue("@arama", "kullanici");
        cmd.Parameters.AddWithValue("@marka", c);
        cmd.Parameters.AddWithValue("@sahip", c);
        cmd.Parameters.AddWithValue("@model", c);
        cmd.Parameters.AddWithValue("@modelyili", c);
        cmd.Parameters.AddWithValue("@plaka", c);
        cmd.Parameters.AddWithValue("@tarih1", "01.01.2015");
        cmd.Parameters.AddWithValue("@tarih2", "01.01.2015");
        cmd.Parameters.AddWithValue("@aracdurum", c);
        cmd.Parameters.AddWithValue("@durum", c);
        cmd.Parameters.AddWithValue("@musteri", c);
        cmd.Parameters.AddWithValue("@tipi", c);
        cmd.Parameters.AddWithValue("@a", c);
        cmd.Parameters.AddWithValue("@park", c);
        cmd.CommandType = CommandType.StoredProcedure;
        SqlParameter parm = new SqlParameter("@return", SqlDbType.Int);
        parm.Direction = ParameterDirection.ReturnValue;

        cmd.Parameters.Add(parm);
        con.Open();

        DataTable dtarac = new DataTable();
        SqlDataReader dr;
        dr = cmd.ExecuteReader();
        dtarac.Load(dr);
        con.Close();
        int id = Convert.ToInt32(parm.Value);
        lblms.Text = "";
        lblms.Text = "Tabloda '" + id + "' Kayıt Bulunmaktadır.";
        ViewState["dt"] = dtarac;
        ViewState["sort"] = "Asc";
        return dtarac;

    }
    public DataTable aracdurum_listele(string aracdurum)
    {
        string c = "ww";
        SqlConnection con = new SqlConnection(connStr);
        SqlCommand cmd = new SqlCommand("filtreler", con);
        cmd.Parameters.AddWithValue("@aracdurum", aracdurum);
        cmd.Parameters.AddWithValue("@arama", "aracdurum");
        cmd.Parameters.AddWithValue("@marka", c);
        cmd.Parameters.AddWithValue("@model", c);
        cmd.Parameters.AddWithValue("@modelyili", c);
        cmd.Parameters.AddWithValue("@sahip", c);
        cmd.Parameters.AddWithValue("@plaka", c);
        cmd.Parameters.AddWithValue("@tarih1", "01.01.2015");
        cmd.Parameters.AddWithValue("@tarih2", "01.01.2015");
        cmd.Parameters.AddWithValue("@satıstemsil", c);
        cmd.Parameters.AddWithValue("@durum", c);
        cmd.Parameters.AddWithValue("@tipi", c);
        cmd.Parameters.AddWithValue("@musteri", c);
        cmd.Parameters.AddWithValue("@a", c);
        cmd.Parameters.AddWithValue("@park", c);
        cmd.CommandType = CommandType.StoredProcedure;
        SqlParameter parm = new SqlParameter("@return", SqlDbType.Int);
        parm.Direction = ParameterDirection.ReturnValue;

        cmd.Parameters.Add(parm);
        con.Open();

        DataTable dtarac = new DataTable();
        SqlDataReader dr;
        dr = cmd.ExecuteReader();
        dtarac.Load(dr);
        con.Close();
        int id = Convert.ToInt32(parm.Value);
        lblms.Text = "";
        lblms.Text = "Tabloda '" + id + "' Kayıt Bulunmaktadır.";
        ViewState["dt"] = dtarac;
        ViewState["sort"] = "Asc";
        return dtarac;

    }
   
    protected void btnara_Click(object sender, EventArgs e)
    {
          if (dptarihtip.SelectedIndex != 0 && dpsatıs.SelectedIndex != 0 && dpdurum.SelectedIndex!=0 && txttarih1.Text!="" && txttarih2.Text!="" )
        {
            gfiltre.Visible = true;
            gfiltre.DataSource = tarihdurumkullanici_listele(dptarihtip.SelectedValue.ToString(), Convert.ToDateTime(txttarih1.Text), Convert.ToDateTime(txttarih2.Text), dpsatıs.SelectedValue.ToString(),dpdurum.SelectedValue.ToString());
            gfiltre.DataBind();
            gaktif.Visible = false;
            godeme.Visible = false;
            grezerve.Visible = false;

        }
        else if (dpdurum.SelectedIndex != 0 && dpmarka.SelectedIndex != 0 && dpmodel.SelectedIndex == 0)
        {
            gfiltre.Visible = true;
            gfiltre.DataSource = markadurum_listele(dpmarka.SelectedValue.ToString(), dpdurum.SelectedValue.ToString());
            gfiltre.DataBind();
            gaktif.Visible = false;
            godeme.Visible = false;
            grezerve.Visible = false;

        }
       
        else if (dpdurum.SelectedIndex != 0 && dptipi.SelectedIndex != 0)
        {
            gfiltre.Visible = true;
            gfiltre.DataSource = tipidurum_listele(dptipi.SelectedValue.ToString(), dpdurum.SelectedValue.ToString());
            gfiltre.DataBind();
            gaktif.Visible = false;
            godeme.Visible = false;
            grezerve.Visible = false;

        }
        else if (dpmarka.SelectedIndex != 0 && dpmodel.SelectedIndex== 0)
        {
            gfiltre.Visible = true;
            gfiltre.DataSource = marka_listele(dpmarka.SelectedValue.ToString());
            gfiltre.DataBind();
            gaktif.Visible = false;
            godeme.Visible = false;
            grezerve.Visible = false;

        }
     
        else if (dpmarka.SelectedIndex != 0 && dpmodel.SelectedValue.ToString() != "0")
        {
            gfiltre.Visible = true;
            gfiltre.DataSource = markamodel_listele(dpmarka.SelectedValue.ToString(), dpmodel.SelectedValue.ToString());
            gfiltre.DataBind();
            gaktif.Visible = false;
            godeme.Visible = false;
            grezerve.Visible = false;

        }
        else if (dpsahip.SelectedIndex != 0 && dpdurum.SelectedIndex != 0)
        {
            gfiltre.Visible = true;
            gfiltre.DataSource = sahipdurum_listele(dpsahip.SelectedValue.ToString(), dpdurum.SelectedValue.ToString());
            gfiltre.DataBind();
            gaktif.Visible = false;
            godeme.Visible = false;
            grezerve.Visible = false;

        }
        else if (dptarihtip.SelectedIndex != 0 && dpdurum.SelectedIndex != 0)
        {
            gfiltre.Visible = true;
            gfiltre.DataSource = durum_tarihtip_listele(dptarihtip.SelectedValue.ToString(), Convert.ToDateTime(txttarih1.Text), Convert.ToDateTime(txttarih2.Text), dpdurum.SelectedValue.ToString());
            gfiltre.DataBind();
            gaktif.Visible = false;
            godeme.Visible = false;
            grezerve.Visible = false;

        }
        else if (dptarihtip.SelectedIndex != 0 && dpsatıs.SelectedIndex != 0)
        {
            gfiltre.Visible = true;
            gfiltre.DataSource = tarihkullanici_listele(dptarihtip.SelectedValue.ToString(), Convert.ToDateTime(txttarih1.Text), Convert.ToDateTime(txttarih2.Text), dpsatıs.SelectedValue.ToString());
            gfiltre.DataBind();
            gaktif.Visible = false;
            godeme.Visible = false;
            grezerve.Visible = false;

        }
        else if (dpdurum.SelectedIndex != 0 && txtplaka.Text != "")
        {
            gfiltre.Visible = true;
            gfiltre.DataSource = plaka_durum_listele(txtplaka.Text, dpdurum.SelectedValue.ToString());
            gfiltre.DataBind();
            gaktif.Visible = false;
            godeme.Visible = false;
            grezerve.Visible = false;
        }
        else if (dpsahip.SelectedIndex != 0 && dpdurum.SelectedIndex != 0)
        {
            gfiltre.Visible = true;
            gfiltre.DataSource = sahipdurum_listele(dpsahip.SelectedValue.ToString(), dpdurum.SelectedValue.ToString());
            gfiltre.DataBind();
            gaktif.Visible = false;
            godeme.Visible = false;
            grezerve.Visible = false;

        }
        else if (dpmarka.SelectedIndex != 0 )
        {
            gfiltre.Visible = true;
            gfiltre.DataSource = marka_listele(dpmarka.SelectedValue.ToString());
            gfiltre.DataBind();
            gaktif.Visible = false;
            godeme.Visible = false;
            grezerve.Visible = false;

        }
     
        else if (dpmodelyil.SelectedIndex != 0)
        {
            gfiltre.Visible = true;
            gfiltre.DataSource = modelyil_listele(dpmodelyil.SelectedValue.ToString());
            gfiltre.DataBind();
            gaktif.Visible = false;
            godeme.Visible = false;
            grezerve.Visible = false;

        }
        else if (dptipi.SelectedIndex != 0)
        {
            gfiltre.Visible = true;
            gfiltre.DataSource = tipi_listele(dptipi.SelectedValue.ToString());
            gfiltre.DataBind();
            gaktif.Visible = false;
            godeme.Visible = false;
            grezerve.Visible = false;

        }

       
        else if (txtplaka.Text != "")
        {
            gfiltre.Visible = true;
            gfiltre.DataSource = plaka_listele(txtplaka.Text);
            gfiltre.DataBind();
            gaktif.Visible = false;
            godeme.Visible = false;
            grezerve.Visible = false;

        }
      
        else if (dptarihtip.SelectedIndex != 0)
        {
            gfiltre.Visible = true;
            gfiltre.DataSource = tarih_listele(dptarihtip.SelectedValue.ToString(), Convert.ToDateTime(txttarih1.Text), Convert.ToDateTime(txttarih2.Text));
            gfiltre.DataBind();
            gaktif.Visible = false;
            godeme.Visible = false;
            grezerve.Visible = false;

        }
        else if (dpdurum.SelectedIndex != 0)
        {
            gfiltre.Visible = true;
            gfiltre.DataSource = durum_listele(dpdurum.SelectedValue.ToString());
            gfiltre.DataBind();
            gaktif.Visible = false;
            godeme.Visible = false;
            grezerve.Visible = false;

        }
      
        else if (dpsahip.SelectedIndex != 0)
        {
            gfiltre.Visible = true;
            gfiltre.DataSource = sahip_listele(dpsahip.SelectedValue.ToString());
            gfiltre.DataBind();
            gaktif.Visible = false;
            godeme.Visible = false;
            grezerve.Visible = false;

        }


        else if (txtmusteriad.Text != "")
        {
            gfiltre.Visible = true;
            gfiltre.DataSource = musteriad_listele(txtmusteriad.Text.ToString());
            gfiltre.DataBind();
            gaktif.Visible = false;
            godeme.Visible = false;
            grezerve.Visible = false;

        }
       
        else if (dpsatıs.SelectedIndex != 0)
        {
            gfiltre.Visible = true;
            gfiltre.DataSource = satıs_listele(dpsatıs.SelectedValue.ToString());
            gfiltre.DataBind();
            gaktif.Visible = false;
            godeme.Visible = false;
            grezerve.Visible = false;

        }
        else if (dparacdurum.SelectedIndex != 0)
        {
            gfiltre.Visible = true;
            gfiltre.DataSource = aracdurum_listele(dparacdurum.SelectedValue.ToString());
            gfiltre.DataBind();
            gaktif.Visible = false;
            godeme.Visible = false;
            grezerve.Visible = false;

        }
      
    }

    protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
    {
        
    }
    protected void godeme_SelectedIndexChanged(object sender, EventArgs e)
    {
       
            int selectedRowIndex;
            selectedRowIndex = godeme.SelectedIndex;
            //Seçilen verinin ad ve soyad bilgisini alacağımız için ilgili değişkenleri tanımladım. 
            GridViewRow row = godeme.Rows[selectedRowIndex];

            //label kontrolüme verilerimi yazdırdım.
            a = Convert.ToInt32(row.Cells[2].Text);

            HttpCookie myCookiee = new HttpCookie("myCookiee");
            myCookiee["durumu"] = row.Cells[17].Text;
            myCookiee.Expires = DateTime.Now.AddDays(1); // cookiesimiz 1 saat kalsın dedik.
            Response.Cookies.Add(myCookiee); // cookies ekledik
            Response.Redirect("aracdetay.aspx?aracid=" + a + "");
    
    }

    protected void grezerve_SelectedIndexChanged(object sender, EventArgs e)
    {
       
            int selectedRowIndex;
            selectedRowIndex = grezerve.SelectedIndex;
            //Seçilen verinin ad ve soyad bilgisini alacağımız için ilgili değişkenleri tanımladım. 
            GridViewRow row = grezerve.Rows[selectedRowIndex];

            //label kontrolüme verilerimi yazdırdım.
            a = Convert.ToInt32(row.Cells[2].Text);

            HttpCookie myCookiee = new HttpCookie("myCookiee");
            myCookiee["durumu"] = row.Cells[17].Text;
            myCookiee.Expires = DateTime.Now.AddDays(1); // cookiesimiz 1 saat kalsın dedik.
            Response.Cookies.Add(myCookiee); // cookies ekledik
            Response.Redirect("aracdetay.aspx?aracid=" + a + "");

    }

    protected void gfiltre_SelectedIndexChanged(object sender, EventArgs e)
    {
       
            int selectedRowIndex;
            selectedRowIndex = gfiltre.SelectedIndex;
            //Seçilen verinin ad ve soyad bilgisini alacağımız için ilgili değişkenleri tanımladım. 
            GridViewRow row = gfiltre.Rows[selectedRowIndex];

            //label kontrolüme verilerimi yazdırdım.
            a = Convert.ToInt32(row.Cells[2].Text);

            HttpCookie myCookiee = new HttpCookie("myCookiee");
            myCookiee["durumu"] = row.Cells[17].Text;
            myCookiee.Expires = DateTime.Now.AddDays(1); // cookiesimiz 1 saat kalsın dedik.
            Response.Cookies.Add(myCookiee); // cookies ekledik
            Response.Redirect("aracdetay.aspx?aracid=" + a + "");
        
    }
    protected void gfiltre_PageIndexChanging(object sender, GridViewPageEventArgs e)
    {
        if (dpdurum.SelectedIndex != 0 && dpmarka.SelectedIndex != 0 && dpmodel.SelectedIndex == 0)
        {
            gfiltre.PageIndex = e.NewPageIndex;
            gfiltre.Visible = true;
            gfiltre.DataSource = markadurum_listele(dpmarka.SelectedValue.ToString(), dpdurum.SelectedValue.ToString());
            gfiltre.DataBind();
            gaktif.Visible = false;
            godeme.Visible = false;
            grezerve.Visible = false;

        }
    
        else if (dpmarka.SelectedIndex != 0 && dpmodel.SelectedValue.ToString() != "0")
        {
            gfiltre.PageIndex = e.NewPageIndex;
            gfiltre.Visible = true;
            gfiltre.DataSource = markamodel_listele(dpmarka.SelectedValue.ToString(), dpmodel.SelectedValue.ToString());
            gfiltre.DataBind();
            gaktif.Visible = false;
            godeme.Visible = false;
            grezerve.Visible = false;

        }
        else if (dptarihtip.SelectedIndex != 0 && dpsatıs.SelectedIndex != 0)
        {
            gfiltre.PageIndex = e.NewPageIndex;
            gfiltre.Visible = true;
            gfiltre.DataSource = tarihkullanici_listele(dptarihtip.SelectedValue.ToString(), Convert.ToDateTime(txttarih1.Text), Convert.ToDateTime(txttarih2.Text), dpsatıs.SelectedValue.ToString());
            gfiltre.DataBind();
            gaktif.Visible = false;
            godeme.Visible = false;
            grezerve.Visible = false;

        }
        else if (dpdurum.SelectedIndex != 0 && dptipi.SelectedIndex != 0)
        {
            gfiltre.PageIndex = e.NewPageIndex;
            gfiltre.Visible = true;
            gfiltre.DataSource = tipidurum_listele(dptipi.SelectedValue.ToString(), dpdurum.SelectedValue.ToString());
            gfiltre.DataBind();
            gaktif.Visible = false;
            godeme.Visible = false;
            grezerve.Visible = false;

        }
       
        else if (dptarihtip.SelectedIndex != 0 && dpdurum.SelectedIndex != 0)
        {
            gfiltre.PageIndex = e.NewPageIndex;
            gfiltre.Visible = true;
            gfiltre.DataSource = durum_tarihtip_listele(dptarihtip.SelectedValue.ToString(), Convert.ToDateTime(txttarih1.Text), Convert.ToDateTime(txttarih2.Text), dpdurum.SelectedValue.ToString());
            gfiltre.DataBind();
            gaktif.Visible = false;
            godeme.Visible = false;
            grezerve.Visible = false;

        }
        else if (dpmarka.SelectedIndex != 0 && dpmodel.SelectedIndex == 0)
        {
            gfiltre.PageIndex = e.NewPageIndex;
            gfiltre.Visible = true;
            gfiltre.DataSource = marka_listele(dpmarka.SelectedValue.ToString());
            gfiltre.DataBind();
            gaktif.Visible = false;
            godeme.Visible = false;
            grezerve.Visible = false;

        }
        else if (dpdurum.SelectedIndex != 0 && txtplaka.Text != "")
        {
            gfiltre.PageIndex = e.NewPageIndex;
            gfiltre.Visible = true;
            gfiltre.DataSource = plaka_durum_listele(txtplaka.Text, dpdurum.SelectedValue.ToString());
            gfiltre.DataBind();
            gaktif.Visible = false;
            godeme.Visible = false;
            grezerve.Visible = false;
        }
        else if (dpmodelyil.SelectedIndex != 0)
        {
            gfiltre.PageIndex = e.NewPageIndex;
            gfiltre.Visible = true;
            gfiltre.DataSource = modelyil_listele(dpmodelyil.SelectedValue.ToString());
            gfiltre.DataBind();
            gaktif.Visible = false;
            godeme.Visible = false;
            grezerve.Visible = false;

        }
        else if (dptipi.SelectedIndex != 0)
        {
            gfiltre.PageIndex = e.NewPageIndex;
            gfiltre.Visible = true;
            gfiltre.DataSource = tipi_listele(dptipi.SelectedValue.ToString());
            gfiltre.DataBind();
            gaktif.Visible = false;
            godeme.Visible = false;
            grezerve.Visible = false;

        }
     
        else if (txtplaka.Text != "")
        {
            gfiltre.PageIndex = e.NewPageIndex;
            gfiltre.Visible = true;
            gfiltre.DataSource = plaka_listele(txtplaka.Text);
            gfiltre.DataBind();
            gaktif.Visible = false;
            godeme.Visible = false;
            grezerve.Visible = false;

        }
       
        else if (dptarihtip.SelectedIndex != 0)
        {
            gfiltre.PageIndex = e.NewPageIndex;
            gfiltre.Visible = true;
            gfiltre.DataSource = tarih_listele(dptarihtip.SelectedValue.ToString(), Convert.ToDateTime(txttarih1.Text), Convert.ToDateTime(txttarih2.Text));
            gfiltre.DataBind();
            gaktif.Visible = false;
            godeme.Visible = false;
            grezerve.Visible = false;

        }
        else if (dpdurum.SelectedIndex != 0)
        {
            gfiltre.PageIndex = e.NewPageIndex;
            gfiltre.Visible = true;
            gfiltre.DataSource = durum_listele(dpdurum.SelectedValue.ToString());
            gfiltre.DataBind();
            gaktif.Visible = false;
            godeme.Visible = false;
            grezerve.Visible = false;

        }
        else if (dpsahip.SelectedIndex != 0)
        {
            gfiltre.PageIndex = e.NewPageIndex;
            gfiltre.Visible = true;
            gfiltre.DataSource = sahip_listele(dpsahip.SelectedValue.ToString());
            gfiltre.DataBind();
            gaktif.Visible = false;
            godeme.Visible = false;
            grezerve.Visible = false;

        }
        else if (txtmusteriad.Text != "")
        {
            gfiltre.PageIndex = e.NewPageIndex;
            gfiltre.Visible = true;
            gfiltre.DataSource = musteriad_listele(txtmusteriad.Text.ToString());
            gfiltre.DataBind();
            gaktif.Visible = false;
            godeme.Visible = false;
            grezerve.Visible = false;

        }

        else if (dpsatıs.SelectedIndex != 0)
        {
            gfiltre.PageIndex = e.NewPageIndex;
            gfiltre.Visible = true;
            gfiltre.DataSource = satıs_listele(dpsatıs.SelectedValue.ToString());
            gfiltre.DataBind();
            gaktif.Visible = false;
            godeme.Visible = false;
            grezerve.Visible = false;

        }
        else if (dparacdurum.SelectedIndex != 0)
        {
            gfiltre.PageIndex = e.NewPageIndex;
            gfiltre.Visible = true;
            gfiltre.DataSource = aracdurum_listele(dparacdurum.SelectedValue.ToString());
            gfiltre.DataBind();
            gaktif.Visible = false;
            godeme.Visible = false;
            grezerve.Visible = false;

        }
      
    
    }
    protected void btnfiltrealdır_Click(object sender, EventArgs e)
    {
        Page.Response.Redirect(Page.Request.Url.ToString(), true);
       
    }
    protected void btnistenilenler_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/istenilenarac.aspx");
    }

    protected void gfiltre_RowCommand(object sender, GridViewCommandEventArgs e)
    {
               
        if (e.CommandName == "sec")
        {
            int sirano = Convert.ToInt32(e.CommandArgument);
            GridViewRow satırbilgisi = gfiltre.Rows[sirano];
            HttpCookie myCookiee = new HttpCookie("myCookiee");
            myCookiee["durumu"] = satırbilgisi.Cells[17].Text;
            myCookiee.Expires = DateTime.Now.AddDays(1); // cookiesimiz 1 saat kalsın dedik.
            Response.Cookies.Add(myCookiee); // cookies ekledik
            Response.Redirect("aracdetay.aspx?aracid=" + satırbilgisi.Cells[2].Text + "");

            
        }
    }
    protected void gaktif_RowDataBound(object sender, GridViewRowEventArgs e)
    {
        if (e.Row.RowType == DataControlRowType.DataRow)
        {
            e.Row.Attributes.Add("onmouseover", "this.originalstyle=this.style.backgroundColor;this.style.backgroundColor='#e0b186'");
            e.Row.Attributes.Add("onmouseout", "this.style.backgroundColor=this.originalstyle;");
        }

    }
    protected void godeme_RowDataBound(object sender, GridViewRowEventArgs e)
    {
        if (e.Row.RowType == DataControlRowType.DataRow)
        {
            e.Row.Attributes.Add("onmouseover", "this.originalstyle=this.style.backgroundColor;this.style.backgroundColor='#e0b186'");
            e.Row.Attributes.Add("onmouseout", "this.style.backgroundColor=this.originalstyle;");
        }

    }
    protected void grezerve_RowDataBound(object sender, GridViewRowEventArgs e)
    {
        if (e.Row.RowType == DataControlRowType.DataRow)
        {
            e.Row.Attributes.Add("onmouseover", "this.originalstyle=this.style.backgroundColor;this.style.backgroundColor='#e0b186'");
            e.Row.Attributes.Add("onmouseout", "this.style.backgroundColor=this.originalstyle;");
        }

    }
    protected void gfiltre_RowDataBound(object sender, GridViewRowEventArgs e)
    {
        if (e.Row.RowType == DataControlRowType.DataRow)
        {
            e.Row.Attributes.Add("onmouseover", "this.originalstyle=this.style.backgroundColor;this.style.backgroundColor='#e0b186'");
            e.Row.Attributes.Add("onmouseout", "this.style.backgroundColor=this.originalstyle;");
        }

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
    protected void SqlDataSource4_Selected(object sender, SqlDataSourceStatusEventArgs e)
    {
        int RowCount = Convert.ToInt32(e.Command.Parameters["@return"].Value);
        if (gaktif.Visible==true)
        {
            lblms.Text = "";
            lblms.Text = "Tabloda '" + RowCount.ToString() + "' Kayıt Bulunmaktadır.";
        }
    }
    protected void SqlDataSource7_Selected(object sender, SqlDataSourceStatusEventArgs e)
    {
        int RowCount = Convert.ToInt32(e.Command.Parameters["@return"].Value);
        if (grezerve.Visible == true)
        {
            lblms.Text = "";
            lblms.Text = "Tabloda '" + RowCount.ToString() + "' Kayıt Bulunmaktadır.";
        }
    }
    protected void SqlDataSource6_Selected(object sender, SqlDataSourceStatusEventArgs e)
    {
        int RowCount = Convert.ToInt32(e.Command.Parameters["@return"].Value);
        if (godeme.Visible == true)
        {
            lblms.Text = "";
            lblms.Text = "Tabloda '" + RowCount.ToString() + "' Kayıt Bulunmaktadır.";
        }
    }
    protected void SqlDataSource1_Selected(object sender, SqlDataSourceStatusEventArgs e)
    {
        //int RowCount = Convert.ToInt32(e.Command.Parameters["@return"].Value);
        //if (gfiltre.Visible == true)
        //{
        //    lblms.Text = "";
        //    lblms.Text = "Tabloda '" + RowCount.ToString() + "' Kayıt Bulunmaktadır.";
        //}
    }
    protected void ImageButton1_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/aracekle.aspx");
    }


    protected void gfiltre_Sorting(object sender, GridViewSortEventArgs e)
    {
        DataTable dt1 = (DataTable)ViewState["dt"];
        if (dt1.Rows.Count > 0)
        {
            if (Convert.ToString(ViewState["sort"]) == "Asc")
            {
                dt1.DefaultView.Sort = e.SortExpression + " Desc";
                ViewState["sort"] = "Desc";
            }
            else
            {
                dt1.DefaultView.Sort = e.SortExpression + " Asc";
                ViewState["sort"] = "Asc";
            }
            gfiltre.DataSource = dt1;
            gfiltre.DataBind();
        }
    }
    protected void ImageButton5_Click1(object sender, ImageClickEventArgs e)
    {
        Response.Redirect("~/araclistesi.aspx");
    }

    protected void Button1_Click(object sender, EventArgs e)
    {

    }
    protected void ImageButton3_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/istatistik.aspx");
    }
    protected void btnyazdir_Click(object sender, EventArgs e)
    {
        
    }
    protected void ImageButton4_Click(object sender, ImageClickEventArgs e)
    {
        if (gaktif.Visible == true)
        {
            gaktif.AllowPaging = false;
            gaktif.DataBind();
            GridViewExportUtil.Export("Aktifler.xls", gaktif);
        }
        else if (godeme.Visible == true)
        {
            godeme.AllowPaging = false;
            godeme.DataBind();
            GridViewExportUtil.Export("Odemeler.xls", godeme);
        }
        else if (grezerve.Visible == true)
        {
            grezerve.AllowPaging = false;
            grezerve.DataBind();
            GridViewExportUtil.Export("Rezerverler.xls", grezerve);
        }
        else if (gfiltre.Visible == true)
        {
              if (dptarihtip.SelectedIndex != 0 && dpsatıs.SelectedIndex != 0 && dpdurum.SelectedIndex != 0 && txttarih1.Text != "" && txttarih2.Text != "")
              {
                 
                  gfiltre.AllowPaging = false;
                  gfiltre.DataSource = tarihdurumkullanici_listele(dptarihtip.SelectedValue.ToString(), Convert.ToDateTime(txttarih1.Text), Convert.ToDateTime(txttarih2.Text), dpsatıs.SelectedValue.ToString(), dpdurum.SelectedValue.ToString());
                  gfiltre.DataBind();
                  GridViewExportUtil.Export("Araclar.xls", gfiltre);


              }
              else if (dpdurum.SelectedIndex != 0 && dpmarka.SelectedIndex != 0 && dpmodel.SelectedIndex == 0)
              {
                 
                  gfiltre.AllowPaging = false;
                  gfiltre.DataSource = markadurum_listele(dpmarka.SelectedValue.ToString(), dpdurum.SelectedValue.ToString());
                  gfiltre.DataBind();
                  GridViewExportUtil.Export("Araclar.xls", gfiltre);


              }

              else if (dpdurum.SelectedIndex != 0 && dptipi.SelectedIndex != 0)
              {
                  gfiltre.AllowPaging = false;
                  gfiltre.DataSource = tipidurum_listele(dptipi.SelectedValue.ToString(), dpdurum.SelectedValue.ToString());
                  gfiltre.DataBind();
                  GridViewExportUtil.Export("Araclar.xls", gfiltre);


              }
              else if (dpmarka.SelectedIndex != 0 && dpmodel.SelectedIndex == 0)
              {
                  
                  gfiltre.AllowPaging = false;
                  gfiltre.DataSource = marka_listele(dpmarka.SelectedValue.ToString());
                  gfiltre.DataBind();
                  GridViewExportUtil.Export("Araclar.xls", gfiltre);


              }

              else if (dpmarka.SelectedIndex != 0 && dpmodel.SelectedValue.ToString() != "0")
              {
                 
                 gfiltre.AllowPaging = false;
                 gfiltre.DataSource = markamodel_listele(dpmarka.SelectedValue.ToString(), dpmodel.SelectedValue.ToString());
                 gfiltre.DataBind();
                  GridViewExportUtil.Export("Araclar.xls", gfiltre);

              }
              else if (dpsahip.SelectedIndex != 0 && dpdurum.SelectedIndex != 0)
              {
                
                  gfiltre.AllowPaging = false;
                  gfiltre.DataSource = sahipdurum_listele(dpsahip.SelectedValue.ToString(), dpdurum.SelectedValue.ToString());
                  gfiltre.DataBind();
                  GridViewExportUtil.Export("Araclar.xls", gfiltre);

              }
              else if (dptarihtip.SelectedIndex != 0 && dpdurum.SelectedIndex != 0)
              {
                  
                  gfiltre.AllowPaging = false;
                  gfiltre.DataSource = durum_tarihtip_listele(dptarihtip.SelectedValue.ToString(), Convert.ToDateTime(txttarih1.Text), Convert.ToDateTime(txttarih2.Text), dpdurum.SelectedValue.ToString());
                  gfiltre.DataBind();
                  GridViewExportUtil.Export("Araclar.xls", gfiltre);


              }
              else if (dptarihtip.SelectedIndex != 0 && dpsatıs.SelectedIndex != 0)
              {
                 
                  gfiltre.AllowPaging = false;
                  gfiltre.DataSource = tarihkullanici_listele(dptarihtip.SelectedValue.ToString(), Convert.ToDateTime(txttarih1.Text), Convert.ToDateTime(txttarih2.Text), dpsatıs.SelectedValue.ToString());
                  gfiltre.DataBind();
                  GridViewExportUtil.Export("Araclar.xls", gfiltre);


              }
              else if (dpdurum.SelectedIndex != 0 && txtplaka.Text != "")
              {
                 
                  gfiltre.AllowPaging = false;
                  gfiltre.DataSource = plaka_durum_listele(txtplaka.Text, dpdurum.SelectedValue.ToString());
                  gfiltre.DataBind();
                  GridViewExportUtil.Export("Araclar.xls", gfiltre);

              }
              else if (dpsahip.SelectedIndex != 0 && dpdurum.SelectedIndex != 0)
              {
                 
                  gfiltre.AllowPaging = false;
                  gfiltre.DataSource = sahipdurum_listele(dpsahip.SelectedValue.ToString(), dpdurum.SelectedValue.ToString());
                  gfiltre.DataBind();
                  GridViewExportUtil.Export("Araclar.xls", gfiltre);


              }
              else if (dpmarka.SelectedIndex != 0)
              {
                 
                  gfiltre.AllowPaging = false;
                  gfiltre.DataSource = marka_listele(dpmarka.SelectedValue.ToString());
                  gfiltre.DataBind();
                  GridViewExportUtil.Export("Araclar.xls", gfiltre);


              }

              else if (dpmodelyil.SelectedIndex != 0)
              {
                  
                 gfiltre.AllowPaging = false;
                 gfiltre.DataSource = modelyil_listele(dpmodelyil.SelectedValue.ToString());
                 gfiltre.DataBind();
                  GridViewExportUtil.Export("Araclar.xls", gfiltre);


              }
              else if (dptipi.SelectedIndex != 0)
              {
                
                  gfiltre.AllowPaging = false;
                  gfiltre.DataSource = tipi_listele(dptipi.SelectedValue.ToString());
                  gfiltre.DataBind();
                  GridViewExportUtil.Export("Araclar.xls", gfiltre);

              }


              else if (txtplaka.Text != "")
              {
                
                  gfiltre.AllowPaging = false;
                  gfiltre.DataSource = plaka_listele(txtplaka.Text);
                  gfiltre.DataBind();
                  GridViewExportUtil.Export("Araclar.xls", gfiltre);


              }

              else if (dptarihtip.SelectedIndex != 0)
              {
                
                  gfiltre.AllowPaging = false;
                  gfiltre.DataSource = tarih_listele(dptarihtip.SelectedValue.ToString(), Convert.ToDateTime(txttarih1.Text), Convert.ToDateTime(txttarih2.Text));
                  gfiltre.DataBind();
                  GridViewExportUtil.Export("Araclar.xls", gfiltre);


              }
              else if (dpdurum.SelectedIndex != 0)
              {
                  gfiltre.AllowPaging = false;
                  gfiltre.DataSource = durum_listele(dpdurum.SelectedValue.ToString());
                  gfiltre.DataBind();
                  GridViewExportUtil.Export("Araclar.xls", gfiltre);

              }

              else if (dpsahip.SelectedIndex != 0)
              {
                 
                  gfiltre.AllowPaging = false;
                  gfiltre.DataSource = sahip_listele(dpsahip.SelectedValue.ToString());
                  gfiltre.DataBind();
                  GridViewExportUtil.Export("Araclar.xls", gfiltre);


              }


              else if (txtmusteriad.Text != "")
              {
                 
                  gfiltre.AllowPaging = false;
                  gfiltre.DataSource = musteriad_listele(txtmusteriad.Text.ToString());
                  gfiltre.DataBind();
                  GridViewExportUtil.Export("Araclar.xls", gfiltre);



              }

              else if (dpsatıs.SelectedIndex != 0)
              {
                
                  gfiltre.AllowPaging = false;
                  gfiltre.DataSource = satıs_listele(dpsatıs.SelectedValue.ToString());
                  gfiltre.DataBind();
                  GridViewExportUtil.Export("Araclar.xls", gfiltre);


              }
              else if (dparacdurum.SelectedIndex != 0)
              {
                 
                  gfiltre.AllowPaging = false;
                  gfiltre.DataSource = aracdurum_listele(dparacdurum.SelectedValue.ToString());
                  gfiltre.DataBind();
                  GridViewExportUtil.Export("Araclar.xls", gfiltre);



              }
       
        
        }
    }
    protected void SqlDataSource1_Selecting(object sender, SqlDataSourceSelectingEventArgs e)
    {

    }
    protected void gyonetim_SelectedIndexChanged(object sender, EventArgs e)
    {
        int selectedRowIndex;
        selectedRowIndex = grezerve.SelectedIndex;
        //Seçilen verinin ad ve soyad bilgisini alacağımız için ilgili değişkenleri tanımladım. 
        GridViewRow row = grezerve.Rows[selectedRowIndex];

        //label kontrolüme verilerimi yazdırdım.
        a = Convert.ToInt32(row.Cells[2].Text);

        HttpCookie myCookiee = new HttpCookie("myCookiee");
        myCookiee["durumu"] = row.Cells[17].Text;
        myCookiee.Expires = DateTime.Now.AddDays(1); // cookiesimiz 1 saat kalsın dedik.
        Response.Cookies.Add(myCookiee); // cookies ekledik
        Response.Redirect("aracdetay.aspx?aracid=" + a + "");

    }
    protected void SqlDataSource12_Selected(object sender, SqlDataSourceStatusEventArgs e)
    {
       
    }
    protected void gyonetim_SelectedIndexChanged1(object sender, EventArgs e)
    {
        
    }

    protected void gyonetim_SelectedIndexChanged2(object sender, EventArgs e)
    {
        int selectedRowIndex;
        selectedRowIndex = gyonetim.SelectedIndex;
        //Seçilen verinin ad ve soyad bilgisini alacağımız için ilgili değişkenleri tanımladım. 
        GridViewRow row = gyonetim.Rows[selectedRowIndex];

        //label kontrolüme verilerimi yazdırdım.
        a = Convert.ToInt32(row.Cells[2].Text);

        HttpCookie myCookiee = new HttpCookie("myCookiee");
        myCookiee["durumu"] = row.Cells[17].Text;
        myCookiee.Expires = DateTime.Now.AddDays(1); // cookiesimiz 1 saat kalsın dedik.
        Response.Cookies.Add(myCookiee); // cookies ekledik
        Response.Redirect("aracdetay.aspx?aracid=" + a + "");

    }
}