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
public partial class istatistik : System.Web.UI.Page
{
    string connStr = WebConfigurationManager.ConnectionStrings["mydb"].ConnectionString;
   
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!Page.IsPostBack)
        {
         
        GridView1.DataSource = danisman_tumu_list();
        GridView1.DataBind();
        decimal toplam_alıs = 0, toplam_satıs = 0, toplam_kar = 0, toplam_devir = 0; //burada basit bir toplama işlemi yapıyoruz. 6. sutundaki verileri alt alta topluyoruz.
        for (int i = 0; i < GridView1.Rows.Count; i++)
        {
            toplam_alıs += Convert.ToDecimal(GridView1.Rows[i].Cells[11].Text);
            toplam_satıs += Convert.ToDecimal(GridView1.Rows[i].Cells[12].Text);
            toplam_kar += Convert.ToDecimal(GridView1.Rows[i].Cells[13].Text);
            toplam_devir += Convert.ToDecimal(GridView1.Rows[i].Cells[14].Text);
        }
        if (GridView1.Rows.Count != 0)
        {
            lbladet.Text = "Toplam: " + GridView1.Rows.Count + " kayıt."; // kaçtane kayıt olduğunu footerımızın 3. sutununa yazıyoruz.
            lblortdevir.Text = "Ort.Devir Hızı: " + Math.Round((toplam_devir / GridView1.Rows.Count), 1).ToString();
            lblortkar.Text = "Ort. Karlılık: " + Math.Round((toplam_kar / GridView1.Rows.Count), 1).ToString();
            GridView1.FooterRow.Cells[11].Text = toplam_alıs.ToString(); // topladığımız değerleri footerdaki 6. sutuna yazıyoruz.
            GridView1.FooterRow.Cells[12].Text = toplam_satıs.ToString();
            GridView1.FooterRow.Cells[13].Text = toplam_kar.ToString();
            GridView1.FooterRow.Cells[14].Text = toplam_devir.ToString();
        }

        }
    }
    public DataTable aractipi_tarih_list(DateTime tarih1, DateTime tarih2, string aractipi)
    {
        string c = "ww";
        SqlConnection con = new SqlConnection(connStr);
        SqlCommand cmd = new SqlCommand("istatistikler", con);
        cmd.Parameters.AddWithValue("@danisman", c);
        cmd.Parameters.AddWithValue("@arama", "aractipi_tarih");
        cmd.Parameters.AddWithValue("@tipi", aractipi);
        cmd.Parameters.AddWithValue("@tarih1", tarih1);
        cmd.Parameters.AddWithValue("@tarih2", tarih2);
        cmd.Parameters.AddWithValue("@plaka", c);
        cmd.Parameters.AddWithValue("@sahip", c);
        cmd.CommandType = CommandType.StoredProcedure;

        con.Open();

        DataTable dtarac = new DataTable();
        SqlDataReader dr;
        dr = cmd.ExecuteReader();
        dtarac.Load(dr);
        con.Close();
        ViewState["dt"] = dtarac;
        ViewState["sort"] = "Asc";
        return dtarac;
    }
    public DataTable danisman_tarih_list(DateTime tarih1, DateTime tarih2, string danisman)
    {
        string c = "ww";
        SqlConnection con = new SqlConnection(connStr);
        SqlCommand cmd = new SqlCommand("istatistikler", con);
        cmd.Parameters.AddWithValue("@danisman", danisman);
        cmd.Parameters.AddWithValue("@arama", "danisman_tarih");
        cmd.Parameters.AddWithValue("@tipi", c);
        cmd.Parameters.AddWithValue("@tarih1", tarih1);
        cmd.Parameters.AddWithValue("@tarih2", tarih2);
        cmd.Parameters.AddWithValue("@plaka", c);
        cmd.Parameters.AddWithValue("@sahip", c);
        cmd.CommandType = CommandType.StoredProcedure;

        con.Open();

        DataTable dtarac = new DataTable();
        SqlDataReader dr;
        dr = cmd.ExecuteReader();
        dtarac.Load(dr);
        con.Close();
        ViewState["dt"] = dtarac;
        ViewState["sort"] = "Asc";
        return dtarac;
    }

    public DataTable sahip_tarih_list(DateTime tarih1, DateTime tarih2,string sahip)
    {
        string c = "ww";
        SqlConnection con = new SqlConnection(connStr);
        SqlCommand cmd = new SqlCommand("istatistikler", con);
        cmd.Parameters.AddWithValue("@danisman", c);
        cmd.Parameters.AddWithValue("@arama", "sahip_tarih");
        cmd.Parameters.AddWithValue("@tipi", c);
        cmd.Parameters.AddWithValue("@tarih1", tarih1);
        cmd.Parameters.AddWithValue("@tarih2", tarih2);
        cmd.Parameters.AddWithValue("@plaka", c);
        cmd.Parameters.AddWithValue("@sahip", sahip);
        cmd.CommandType = CommandType.StoredProcedure;

        con.Open();

        DataTable dtarac = new DataTable();
        SqlDataReader dr;
        dr = cmd.ExecuteReader();
        dtarac.Load(dr);
        con.Close();
        ViewState["dt"] = dtarac;
        ViewState["sort"] = "Asc";
        return dtarac;
    }
    public DataTable tümü()
    {
       
        SqlConnection con = new SqlConnection(connStr);
        SqlCommand cmd = new SqlCommand("istatistik_tümügetir", con);
        cmd.CommandType = CommandType.StoredProcedure;
        con.Open();

        DataTable dtarac = new DataTable();
        SqlDataReader dr;
        dr = cmd.ExecuteReader();
        dtarac.Load(dr);
        con.Close();
        ViewState["dt"] = dtarac;
        ViewState["sort"] = "Asc";
        return dtarac;
    }

    public DataTable danısman_list(string danisman)
    {
        string c = "ww";
        SqlConnection con = new SqlConnection(connStr);
        SqlCommand cmd = new SqlCommand("istatistikler", con);
        cmd.Parameters.AddWithValue("@danisman", danisman);
        cmd.Parameters.AddWithValue("@arama", "danisman");
        cmd.Parameters.AddWithValue("@tipi", c);
        cmd.Parameters.AddWithValue("@tarih1", "01.01.2015");
        cmd.Parameters.AddWithValue("@tarih2", "01.01.2015");
        cmd.Parameters.AddWithValue("@plaka", c);
        cmd.Parameters.AddWithValue("@sahip", c);
        cmd.CommandType = CommandType.StoredProcedure;

        con.Open();

        DataTable dtarac = new DataTable();
        SqlDataReader dr;
        dr = cmd.ExecuteReader();
        dtarac.Load(dr);
        con.Close();
        ViewState["dt"] = dtarac;
        ViewState["sort"] = "Asc";
        return dtarac;
    }

    public DataTable sahip_list(string sahip)
    {
        string c = "ww";
        SqlConnection con = new SqlConnection(connStr);
        SqlCommand cmd = new SqlCommand("istatistikler", con);
        cmd.Parameters.AddWithValue("@danisman", c);
        cmd.Parameters.AddWithValue("@arama", "sahip");
        cmd.Parameters.AddWithValue("@tipi", c);
        cmd.Parameters.AddWithValue("@tarih1", "01.01.2015");
        cmd.Parameters.AddWithValue("@tarih2", "01.01.2015");
        cmd.Parameters.AddWithValue("@plaka", c);
        cmd.Parameters.AddWithValue("@sahip", sahip);
        cmd.CommandType = CommandType.StoredProcedure;

        con.Open();

        DataTable dtarac = new DataTable();
        SqlDataReader dr;
        dr = cmd.ExecuteReader();
        dtarac.Load(dr);
        con.Close();
        ViewState["dt"] = dtarac;
        ViewState["sort"] = "Asc";
        return dtarac;
    }
    
    public DataTable danisman_tumu_list()
    {
        string c = "ww";
        SqlConnection con = new SqlConnection(connStr);
        SqlCommand cmd = new SqlCommand("istatistikler", con);
        cmd.Parameters.AddWithValue("@danisman", c);
        cmd.Parameters.AddWithValue("@arama", "danisman_tumu");
        cmd.Parameters.AddWithValue("@tipi", c);
        cmd.Parameters.AddWithValue("@tarih1", "01.01.2015");
        cmd.Parameters.AddWithValue("@tarih2", "01.01.2015");
        cmd.Parameters.AddWithValue("@plaka", c);
        cmd.Parameters.AddWithValue("@sahip", c);
        cmd.CommandType = CommandType.StoredProcedure;

        con.Open();

        DataTable dtarac = new DataTable();
        SqlDataReader dr;
        dr = cmd.ExecuteReader();
        dtarac.Load(dr);
        con.Close();
        ViewState["dt"] = dtarac;
        ViewState["sort"] = "Asc";
        return dtarac;
    }
    public DataTable arac_tipi_list(string tipi)
    {
        string c = "ww";
        SqlConnection con = new SqlConnection(connStr);
        SqlCommand cmd = new SqlCommand("istatistikler", con);
        cmd.Parameters.AddWithValue("@danisman", c);
        cmd.Parameters.AddWithValue("@arama", "arac_tipi");
        cmd.Parameters.AddWithValue("@tipi", tipi);
        cmd.Parameters.AddWithValue("@tarih1", "01.01.2015");
        cmd.Parameters.AddWithValue("@tarih2", "01.01.2015");
        cmd.Parameters.AddWithValue("@plaka", c);
        cmd.Parameters.AddWithValue("@sahip", c);
        cmd.CommandType = CommandType.StoredProcedure;

        con.Open();

        DataTable dtarac = new DataTable();
        SqlDataReader dr;
        dr = cmd.ExecuteReader();
        dtarac.Load(dr);
        con.Close();
        ViewState["dt"] = dtarac;
        ViewState["sort"] = "Asc";
        return dtarac;
    }
   
    public DataTable tarih_list(DateTime tarih1,DateTime tarih2)
    {
        string c = "ww";
        SqlConnection con = new SqlConnection(connStr);
        SqlCommand cmd = new SqlCommand("istatistikler", con);
        cmd.Parameters.AddWithValue("@danisman", c);
        cmd.Parameters.AddWithValue("@arama", "tarih");
        cmd.Parameters.AddWithValue("@tipi", c);
        cmd.Parameters.AddWithValue("@tarih1", tarih1);
        cmd.Parameters.AddWithValue("@tarih2", tarih2);
        cmd.Parameters.AddWithValue("@plaka", c);
        cmd.Parameters.AddWithValue("@sahip", c);
        cmd.CommandType = CommandType.StoredProcedure;

        con.Open();

        DataTable dtarac = new DataTable();
        SqlDataReader dr;
        dr = cmd.ExecuteReader();
        dtarac.Load(dr);
        con.Close();
        ViewState["dt"] = dtarac;
        ViewState["sort"] = "Asc";
        return dtarac;
    }
    public DataTable plaka_list(string plaka)
    {
        string c = "ww";
        SqlConnection con = new SqlConnection(connStr);
        SqlCommand cmd = new SqlCommand("istatistikler", con);
        cmd.Parameters.AddWithValue("@danisman", c);
        cmd.Parameters.AddWithValue("@arama", "plaka");
        cmd.Parameters.AddWithValue("@tipi", c);
        cmd.Parameters.AddWithValue("@tarih1", "01.01.2015");
        cmd.Parameters.AddWithValue("@tarih2", "01.01.2015");
        cmd.Parameters.AddWithValue("@plaka", plaka);
        cmd.Parameters.AddWithValue("@sahip", c);
        cmd.CommandType = CommandType.StoredProcedure;

        con.Open();

        DataTable dtarac = new DataTable();
        SqlDataReader dr;
        dr = cmd.ExecuteReader();
        dtarac.Load(dr);
        con.Close();
        ViewState["dt"] = dtarac;
        ViewState["sort"] = "Asc";
        return dtarac;



    }


    protected void btnara_Click(object sender, EventArgs e)
    {
        
        if (dpdanisman.SelectedIndex == 0 && dptipi.SelectedIndex == 0)
        {
                GridView1.DataSource = danisman_tumu_list();
                GridView1.DataBind();
                decimal toplam_alıs = 0, toplam_satıs = 0, toplam_kar = 0, toplam_devir = 0; //burada basit bir toplama işlemi yapıyoruz. 6. sutundaki verileri alt alta topluyoruz.
                for (int i = 0; i < GridView1.Rows.Count; i++)
                {
                    toplam_alıs += Convert.ToDecimal(GridView1.Rows[i].Cells[11].Text);
                    toplam_satıs += Convert.ToDecimal(GridView1.Rows[i].Cells[12].Text);
                    toplam_kar += Convert.ToDecimal(GridView1.Rows[i].Cells[13].Text);
                    toplam_devir += Convert.ToDecimal(GridView1.Rows[i].Cells[14].Text);
                }
                if (GridView1.Rows.Count != 0)
                {
                    lbladet.Text = "Toplam: " + GridView1.Rows.Count + " kayıt."; // kaçtane kayıt olduğunu footerımızın 3. sutununa yazıyoruz.
                    lblortdevir.Text = "Ort.Devir Hızı: " + Math.Round((toplam_devir / GridView1.Rows.Count), 1).ToString();
                    lblortkar.Text = "Ort. Karlılık: " + Math.Round((toplam_kar / GridView1.Rows.Count), 1).ToString();
                    GridView1.FooterRow.Cells[11].Text = toplam_alıs.ToString(); // topladığımız değerleri footerdaki 6. sutuna yazıyoruz.
                    GridView1.FooterRow.Cells[12].Text = toplam_satıs.ToString();
                    GridView1.FooterRow.Cells[13].Text = toplam_kar.ToString();
                    GridView1.FooterRow.Cells[14].Text = toplam_devir.ToString();
                }
          
        }
           if (dpdanisman.SelectedIndex != 0)
         {
             GridView1.DataSource = danısman_list(dpdanisman.SelectedValue.ToString());
             GridView1.DataBind();
             decimal toplam_alıs = 0, toplam_satıs = 0, toplam_kar = 0, toplam_devir = 0; //burada basit bir toplama işlemi yapıyoruz. 6. sutundaki verileri alt alta topluyoruz.
             for (int i = 0; i < GridView1.Rows.Count; i++)
             {
                 toplam_alıs += Convert.ToDecimal(GridView1.Rows[i].Cells[11].Text);
                 toplam_satıs += Convert.ToDecimal(GridView1.Rows[i].Cells[12].Text);
                 toplam_kar += Convert.ToDecimal(GridView1.Rows[i].Cells[13].Text);
                 toplam_devir += Convert.ToDecimal(GridView1.Rows[i].Cells[14].Text);
             }
             if (GridView1.Rows.Count != 0)
             {
                 lbladet.Text = "Toplam: " + GridView1.Rows.Count + " kayıt."; // kaçtane kayıt olduğunu footerımızın 3. sutununa yazıyoruz.
                 lblortdevir.Text = "Ort.Devir Hızı: " + Math.Round((toplam_devir / GridView1.Rows.Count), 1).ToString();
                 lblortkar.Text = "Ort. Karlılık: " + Math.Round((toplam_kar / GridView1.Rows.Count), 1).ToString();
                 GridView1.FooterRow.Cells[11].Text = toplam_alıs.ToString(); // topladığımız değerleri footerdaki 6. sutuna yazıyoruz.
                 GridView1.FooterRow.Cells[12].Text = toplam_satıs.ToString();
                 GridView1.FooterRow.Cells[13].Text = toplam_kar.ToString();
                 GridView1.FooterRow.Cells[14].Text = toplam_devir.ToString();
             }
         }

          if (dpsahip.SelectedIndex !=0)
         {
             GridView1.DataSource = sahip_list(dpsahip.SelectedValue.ToString());
             GridView1.DataBind();
             decimal toplam_alıs = 0, toplam_satıs = 0, toplam_kar = 0, toplam_devir = 0; //burada basit bir toplama işlemi yapıyoruz. 6. sutundaki verileri alt alta topluyoruz.
             for (int i = 0; i < GridView1.Rows.Count; i++)
             {
                 toplam_alıs += Convert.ToDecimal(GridView1.Rows[i].Cells[11].Text);
                 toplam_satıs += Convert.ToDecimal(GridView1.Rows[i].Cells[12].Text);
                 toplam_kar += Convert.ToDecimal(GridView1.Rows[i].Cells[13].Text);
                 toplam_devir += Convert.ToDecimal(GridView1.Rows[i].Cells[14].Text);
             }
             if (GridView1.Rows.Count != 0)
             {
                 lbladet.Text = "Toplam: " + GridView1.Rows.Count + " kayıt."; // kaçtane kayıt olduğunu footerımızın 3. sutununa yazıyoruz.
                 lblortdevir.Text = "Ort.Devir Hızı: " + Math.Round((toplam_devir / GridView1.Rows.Count), 1).ToString();
                 lblortkar.Text = "Ort. Karlılık: " + Math.Round((toplam_kar / GridView1.Rows.Count), 1).ToString();
                 GridView1.FooterRow.Cells[11].Text = toplam_alıs.ToString(); // topladığımız değerleri footerdaki 6. sutuna yazıyoruz.
                 GridView1.FooterRow.Cells[12].Text = toplam_satıs.ToString();
                 GridView1.FooterRow.Cells[13].Text = toplam_kar.ToString();
                 GridView1.FooterRow.Cells[14].Text = toplam_devir.ToString();
             }
         }
       
          if (dptipi.SelectedIndex != 0)
         {
             GridView1.DataSource = arac_tipi_list(dptipi.SelectedValue.ToString());
             GridView1.DataBind();
             decimal toplam_alıs = 0, toplam_satıs = 0, toplam_kar = 0, toplam_devir = 0; //burada basit bir toplama işlemi yapıyoruz. 6. sutundaki verileri alt alta topluyoruz.
             for (int i = 0; i < GridView1.Rows.Count; i++)
             {
                 toplam_alıs += Convert.ToDecimal(GridView1.Rows[i].Cells[11].Text);
                 toplam_satıs += Convert.ToDecimal(GridView1.Rows[i].Cells[12].Text);
                 toplam_kar += Convert.ToDecimal(GridView1.Rows[i].Cells[13].Text);
                 toplam_devir += Convert.ToDecimal(GridView1.Rows[i].Cells[14].Text);
             }
             if (GridView1.Rows.Count != 0)
             {
                 lbladet.Text = "Toplam: " + GridView1.Rows.Count + " kayıt."; // kaçtane kayıt olduğunu footerımızın 3. sutununa yazıyoruz.
                 lblortdevir.Text = "Ort.Devir Hızı: " + Math.Round((toplam_devir / GridView1.Rows.Count), 1).ToString();
                 lblortkar.Text = "Ort. Karlılık: " + Math.Round((toplam_kar / GridView1.Rows.Count), 1).ToString();
                 GridView1.FooterRow.Cells[11].Text = toplam_alıs.ToString(); // topladığımız değerleri footerdaki 6. sutuna yazıyoruz.
                 GridView1.FooterRow.Cells[12].Text = toplam_satıs.ToString();
                 GridView1.FooterRow.Cells[13].Text = toplam_kar.ToString();
                 GridView1.FooterRow.Cells[14].Text = toplam_devir.ToString();
             }
         }
          if (txttarih1.Text != "" && txttarih2.Text != "")
         {
             GridView1.DataSource = tarih_list(Convert.ToDateTime(txttarih1.Text), Convert.ToDateTime(txttarih2.Text));
             GridView1.DataBind();
             decimal toplam_alıs = 0, toplam_satıs = 0, toplam_kar = 0, toplam_devir = 0; //burada basit bir toplama işlemi yapıyoruz. 6. sutundaki verileri alt alta topluyoruz.
             for (int i = 0; i < GridView1.Rows.Count; i++)
             {
                 toplam_alıs += Convert.ToDecimal(GridView1.Rows[i].Cells[11].Text);
                 toplam_satıs += Convert.ToDecimal(GridView1.Rows[i].Cells[12].Text);
                 toplam_kar += Convert.ToDecimal(GridView1.Rows[i].Cells[13].Text);
                 toplam_devir += Convert.ToDecimal(GridView1.Rows[i].Cells[14].Text);
             }
             if (GridView1.Rows.Count != 0)
             {
                 lbladet.Text = "Toplam: " + GridView1.Rows.Count + " kayıt."; // kaçtane kayıt olduğunu footerımızın 3. sutununa yazıyoruz.
                 lblortdevir.Text = "Ort.Devir Hızı: " + Math.Round((toplam_devir / GridView1.Rows.Count), 1).ToString();
                 lblortkar.Text = "Ort. Karlılık: " + Math.Round((toplam_kar / GridView1.Rows.Count), 1).ToString();
                 GridView1.FooterRow.Cells[11].Text = toplam_alıs.ToString(); // topladığımız değerleri footerdaki 6. sutuna yazıyoruz.
                 GridView1.FooterRow.Cells[12].Text = toplam_satıs.ToString();
                 GridView1.FooterRow.Cells[13].Text = toplam_kar.ToString();
                 GridView1.FooterRow.Cells[14].Text = toplam_devir.ToString();
             }
         }
         if (txttarih1.Text != "" && txttarih2.Text != "" && dpsahip.SelectedIndex !=0)
         {
             GridView1.DataSource = sahip_tarih_list(Convert.ToDateTime(txttarih1.Text), Convert.ToDateTime(txttarih2.Text),dpsahip.SelectedValue.ToString());
             GridView1.DataBind();
             decimal toplam_alıs = 0, toplam_satıs = 0, toplam_kar = 0, toplam_devir = 0; //burada basit bir toplama işlemi yapıyoruz. 6. sutundaki verileri alt alta topluyoruz.
             for (int i = 0; i < GridView1.Rows.Count; i++)
             {
                 toplam_alıs += Convert.ToDecimal(GridView1.Rows[i].Cells[11].Text);
                 toplam_satıs += Convert.ToDecimal(GridView1.Rows[i].Cells[12].Text);
                 toplam_kar += Convert.ToDecimal(GridView1.Rows[i].Cells[13].Text);
                 toplam_devir += Convert.ToDecimal(GridView1.Rows[i].Cells[14].Text);
             }
             if (GridView1.Rows.Count != 0)
             {
                 lbladet.Text = "Toplam: " + GridView1.Rows.Count + " kayıt."; // kaçtane kayıt olduğunu footerımızın 3. sutununa yazıyoruz.
                 lblortdevir.Text = "Ort.Devir Hızı: " + Math.Round((toplam_devir / GridView1.Rows.Count), 1).ToString();
                 lblortkar.Text = "Ort. Karlılık: " + Math.Round((toplam_kar / GridView1.Rows.Count), 1).ToString();
                 GridView1.FooterRow.Cells[11].Text = toplam_alıs.ToString(); // topladığımız değerleri footerdaki 6. sutuna yazıyoruz.
                 GridView1.FooterRow.Cells[12].Text = toplam_satıs.ToString();
                 GridView1.FooterRow.Cells[13].Text = toplam_kar.ToString();
                 GridView1.FooterRow.Cells[14].Text = toplam_devir.ToString();
             }
         }
         if (txttarih1.Text != "" && txttarih2.Text != "" && dpdanisman.SelectedIndex != 0)
         {
             GridView1.DataSource = danisman_tarih_list(Convert.ToDateTime(txttarih1.Text), Convert.ToDateTime(txttarih2.Text), dpdanisman.SelectedValue.ToString());
             GridView1.DataBind();
             decimal toplam_alıs = 0, toplam_satıs = 0, toplam_kar = 0, toplam_devir = 0; //burada basit bir toplama işlemi yapıyoruz. 6. sutundaki verileri alt alta topluyoruz.
             for (int i = 0; i < GridView1.Rows.Count; i++)
             {
                 toplam_alıs += Convert.ToDecimal(GridView1.Rows[i].Cells[11].Text);
                 toplam_satıs += Convert.ToDecimal(GridView1.Rows[i].Cells[12].Text);
                 toplam_kar += Convert.ToDecimal(GridView1.Rows[i].Cells[13].Text);
                 toplam_devir += Convert.ToDecimal(GridView1.Rows[i].Cells[14].Text);
             }
             if (GridView1.Rows.Count != 0)
             {
                 lbladet.Text = "Toplam: " + GridView1.Rows.Count + " kayıt."; // kaçtane kayıt olduğunu footerımızın 3. sutununa yazıyoruz.
                 lblortdevir.Text = "Ort.Devir Hızı: " + Math.Round((toplam_devir / GridView1.Rows.Count), 1).ToString();
                 lblortkar.Text = "Ort. Karlılık: " + Math.Round((toplam_kar / GridView1.Rows.Count), 1).ToString();
                 GridView1.FooterRow.Cells[11].Text = toplam_alıs.ToString(); // topladığımız değerleri footerdaki 6. sutuna yazıyoruz.
                 GridView1.FooterRow.Cells[12].Text = toplam_satıs.ToString();
                 GridView1.FooterRow.Cells[13].Text = toplam_kar.ToString();
                 GridView1.FooterRow.Cells[14].Text = toplam_devir.ToString();
             }
         }
         if (txttarih1.Text != "" && txttarih2.Text != "" && dptipi.SelectedIndex != 0)
         {
             GridView1.DataSource = aractipi_tarih_list(Convert.ToDateTime(txttarih1.Text), Convert.ToDateTime(txttarih2.Text), dptipi.SelectedValue.ToString());
             GridView1.DataBind();
             decimal toplam_alıs = 0, toplam_satıs = 0, toplam_kar = 0, toplam_devir = 0; //burada basit bir toplama işlemi yapıyoruz. 6. sutundaki verileri alt alta topluyoruz.
             for (int i = 0; i < GridView1.Rows.Count; i++)
             {
                 toplam_alıs += Convert.ToDecimal(GridView1.Rows[i].Cells[11].Text);
                 toplam_satıs += Convert.ToDecimal(GridView1.Rows[i].Cells[12].Text);
                 toplam_kar += Convert.ToDecimal(GridView1.Rows[i].Cells[13].Text);
                 toplam_devir += Convert.ToDecimal(GridView1.Rows[i].Cells[14].Text);
             }
             if (GridView1.Rows.Count != 0)
             {
                 lbladet.Text = "Toplam: " + GridView1.Rows.Count + " kayıt."; // kaçtane kayıt olduğunu footerımızın 3. sutununa yazıyoruz.
                 lblortdevir.Text = "Ort.Devir Hızı: " + Math.Round((toplam_devir / GridView1.Rows.Count), 1).ToString();
                 lblortkar.Text = "Ort. Karlılık: " + Math.Round((toplam_kar / GridView1.Rows.Count), 1).ToString();
                 GridView1.FooterRow.Cells[11].Text = toplam_alıs.ToString(); // topladığımız değerleri footerdaki 6. sutuna yazıyoruz.
                 GridView1.FooterRow.Cells[12].Text = toplam_satıs.ToString();
                 GridView1.FooterRow.Cells[13].Text = toplam_kar.ToString();
                 GridView1.FooterRow.Cells[14].Text = toplam_devir.ToString();
             }
         }
          if (txtplaka.Text != "")
         {
             GridView1.DataSource = plaka_list(txtplaka.Text.ToUpper());
             GridView1.DataBind();
             decimal toplam_alıs = 0, toplam_satıs = 0, toplam_kar = 0, toplam_devir = 0; //burada basit bir toplama işlemi yapıyoruz. 6. sutundaki verileri alt alta topluyoruz.
             for (int i = 0; i < GridView1.Rows.Count; i++)
             {
                 toplam_alıs += Convert.ToDecimal(GridView1.Rows[i].Cells[11].Text);
                 toplam_satıs += Convert.ToDecimal(GridView1.Rows[i].Cells[12].Text);
                 toplam_kar += Convert.ToDecimal(GridView1.Rows[i].Cells[13].Text);
                 toplam_devir += Convert.ToDecimal(GridView1.Rows[i].Cells[14].Text);
             }
             if (GridView1.Rows.Count != 0)
             {
                 lbladet.Text = "Toplam: " + GridView1.Rows.Count + " kayıt."; // kaçtane kayıt olduğunu footerımızın 3. sutununa yazıyoruz.
                 lblortdevir.Text = "Ort.Devir Hızı: " + Math.Round((toplam_devir / GridView1.Rows.Count), 1).ToString();
                 lblortkar.Text = "Ort. Karlılık: " + Math.Round((toplam_kar / GridView1.Rows.Count), 1).ToString();
                 GridView1.FooterRow.Cells[11].Text = toplam_alıs.ToString(); // topladığımız değerleri footerdaki 6. sutuna yazıyoruz.
                 GridView1.FooterRow.Cells[12].Text = toplam_satıs.ToString();
                 GridView1.FooterRow.Cells[13].Text = toplam_kar.ToString();
                 GridView1.FooterRow.Cells[14].Text = toplam_devir.ToString();
             }
         }
    }
   
    protected void btnfiltrealdır_Click(object sender, EventArgs e)
    {
        Page.Response.Redirect(Page.Request.Url.ToString(), true);
    }
    protected void dpdanisman_SelectedIndexChanged(object sender, EventArgs e)
    {
      
        
    }
  
    protected void GridView1_RowCreated(object sender, GridViewRowEventArgs e)
    {
     
    }
    protected void ImageButton5_Click1(object sender, ImageClickEventArgs e)
    {
        Response.Redirect("~/araclistesi.aspx");
    }
    protected void dpsahip_SelectedIndexChanged(object sender, EventArgs e)
    {
      
    }
    protected void GridView1_Sorting(object sender, GridViewSortEventArgs e)
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
            GridView1.DataSource = dt1;
            GridView1.DataBind();
            decimal toplam_alıs = 0, toplam_satıs = 0, toplam_kar = 0, toplam_devir = 0; //burada basit bir toplama işlemi yapıyoruz. 6. sutundaki verileri alt alta topluyoruz.
            for (int i = 0; i < GridView1.Rows.Count; i++)
            {
                toplam_alıs += Convert.ToDecimal(GridView1.Rows[i].Cells[11].Text);
                toplam_satıs += Convert.ToDecimal(GridView1.Rows[i].Cells[12].Text);
                toplam_kar += Convert.ToDecimal(GridView1.Rows[i].Cells[13].Text);
                toplam_devir += Convert.ToDecimal(GridView1.Rows[i].Cells[14].Text);
            }
            if (GridView1.Rows.Count != 0)
            {
                lbladet.Text = "Toplam: " + GridView1.Rows.Count + " kayıt."; // kaçtane kayıt olduğunu footerımızın 3. sutununa yazıyoruz.
                lblortdevir.Text = "Ort.Devir Hızı: " + Math.Round((toplam_devir / GridView1.Rows.Count), 1).ToString();
                lblortkar.Text = "Ort. Karlılık: " + Math.Round((toplam_kar / GridView1.Rows.Count), 1).ToString();
                GridView1.FooterRow.Cells[11].Text = toplam_alıs.ToString(); // topladığımız değerleri footerdaki 6. sutuna yazıyoruz.
                GridView1.FooterRow.Cells[12].Text = toplam_satıs.ToString();
                GridView1.FooterRow.Cells[13].Text = toplam_kar.ToString();
                GridView1.FooterRow.Cells[14].Text = toplam_devir.ToString();
            }
        }
    }
    protected void GridView1_RowDataBound(object sender, GridViewRowEventArgs e)
    {
        if (e.Row.RowType == DataControlRowType.DataRow)
        {
            e.Row.Attributes.Add("onmouseover", "this.originalstyle=this.style.backgroundColor;this.style.backgroundColor='#FD8466'");
            e.Row.Attributes.Add("onmouseout", "this.style.backgroundColor=this.originalstyle;");
        }

    }
    protected void btntümü_Click(object sender, EventArgs e)
    {
        GridView1.DataSource = tümü();
        GridView1.DataBind();
        decimal toplam_alıs = 0, toplam_satıs = 0, toplam_kar = 0, toplam_devir = 0; //burada basit bir toplama işlemi yapıyoruz. 6. sutundaki verileri alt alta topluyoruz.
        for (int i = 0; i < GridView1.Rows.Count; i++)
        {
            toplam_alıs += Convert.ToDecimal(GridView1.Rows[i].Cells[11].Text);
            toplam_satıs += Convert.ToDecimal(GridView1.Rows[i].Cells[12].Text);
            toplam_kar += Convert.ToDecimal(GridView1.Rows[i].Cells[13].Text);
            toplam_devir += Convert.ToDecimal(GridView1.Rows[i].Cells[14].Text);
        }
        if (GridView1.Rows.Count != 0)
        {
            lbladet.Text = "Toplam: " + GridView1.Rows.Count + " kayıt."; // kaçtane kayıt olduğunu footerımızın 3. sutununa yazıyoruz.
            lblortdevir.Text = "Ort.Devir Hızı: " + Math.Round((toplam_devir / GridView1.Rows.Count), 1).ToString();
            lblortkar.Text = "Ort. Karlılık: " + Math.Round((toplam_kar / GridView1.Rows.Count), 1).ToString();
            GridView1.FooterRow.Cells[11].Text = toplam_alıs.ToString(); // topladığımız değerleri footerdaki 6. sutuna yazıyoruz.
            GridView1.FooterRow.Cells[12].Text = toplam_satıs.ToString();
            GridView1.FooterRow.Cells[13].Text = toplam_kar.ToString();
            GridView1.FooterRow.Cells[14].Text = toplam_devir.ToString();
        }
    }
}