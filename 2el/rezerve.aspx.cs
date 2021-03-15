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
public partial class rezerve : System.Web.UI.Page
{
    string connStr = WebConfigurationManager.ConnectionStrings["mydb"].ConnectionString;
    string alısbedel;
    protected void Page_Load(object sender, EventArgs e)
    {
        
        HttpCookie myCookies = Request.Cookies["myCookie"];
        Label5.Text = myCookies["kullanici_ad"].ToString() + "[Çıkış]";
        if (!Page.IsPostBack)
        {
            Label1.Visible = true;
            Label3.Visible = true;
            txtad.Visible = true;
            txttc.Visible = true;
            Label2.Visible = false;
            Label4.Visible = false;
            txtvergino.Visible = false;
            txtfirma.Visible = false;
            lblaracbedel.Visible = false;
            SqlConnection conn = new SqlConnection(connStr);
            SqlCommand cmd = new SqlCommand("Select il_id, il_ad from il", conn);
            conn.Open();
            SqlDataReader reader = cmd.ExecuteReader();

            dpil.DataSource = reader;
            dpil.DataValueField = "il_id";
            dpil.DataTextField = "il_ad";
            dpil.DataBind();
            reader.Close();
            conn.Close();
            lblodeme.Text = "0";
            
        }
         }


  
    
    protected void dpmustip_SelectedIndexChanged(object sender, EventArgs e)
    {
        if (dpmustip.SelectedIndex==0)
	{
		 Label1.Visible = true;
            Label3.Visible = true;
            txtad.Visible = true;
            txttc.Visible = true;
            Label2.Visible = false;
            Label4.Visible = false;
            txtvergino.Visible = false;
            txtfirma.Visible = false; 
	}
         
        else if (dpmustip.SelectedIndex == 1)
        {
            Label2.Visible = true;
            Label4.Visible = true;
            txtvergino.Visible = true;
            txtfirma.Visible = true;
            Label1.Visible = false;
            Label3.Visible = false;
            txtad.Visible = false;
            txttc.Visible = false;
        }
    }
   
    protected void dpil_SelectedIndexChanged(object sender, EventArgs e)
    {
        SqlConnection conn = new SqlConnection(connStr);
        SqlCommand com = new SqlCommand("Select ilce_id, ilce_ad from ilce where il_id=" + dpil.SelectedItem.Value, conn);
        conn.Open();

        SqlDataReader reader = com.ExecuteReader();

        dpilce.DataSource = reader;
        dpilce.DataValueField = "ilce_id";
        dpilce.DataTextField = "ilce_ad";
        dpilce.DataBind();
        reader.Close();
    }
    protected void btniptal_Click(object sender, EventArgs e)
    {
         Response.Redirect("~/araclistesi.aspx");
    }

    protected void txtaracbedel_TextChanged(object sender, EventArgs e)
    {
        if (txtaracbedel.Text=="")
	    {
		 txtaracbedel.Text="0";
        lblodeme.Text = (Convert.ToInt32(txtaracbedel.Text) + Convert.ToInt32(txtsigortabedel.Text)+ Convert.ToInt32(txtkasobedel.Text)+Convert.ToInt32(txtmuayenebedel.Text)).ToString();
         }
        else
            lblodeme.Text = (Convert.ToInt32(txtaracbedel.Text) + Convert.ToInt32(txtsigortabedel.Text)+ Convert.ToInt32(txtkasobedel.Text)+Convert.ToInt32(txtmuayenebedel.Text)).ToString();
    }

    protected void txtsigortabedel_TextChanged(object sender, EventArgs e)
    {
        if (txtsigortabedel.Text == "")
        {
            txtsigortabedel.Text = "0";
        }
        else
        lblodeme.Text = (Convert.ToInt32(txtaracbedel.Text) + Convert.ToInt32(txtsigortabedel.Text)+ Convert.ToInt32(txtkasobedel.Text)+Convert.ToInt32(txtmuayenebedel.Text)).ToString();
  
    }
    protected void txtkasobedel_TextChanged(object sender, EventArgs e)
    {
        if (txtkasobedel.Text == "")
        {
            txtkasobedel.Text = "0";
        }
        else
        lblodeme.Text = (Convert.ToInt32(txtaracbedel.Text) + Convert.ToInt32(txtsigortabedel.Text)+ Convert.ToInt32(txtkasobedel.Text)+Convert.ToInt32(txtmuayenebedel.Text)).ToString();
  
   
    }
    protected void txtmuayenebedel_TextChanged(object sender, EventArgs e)
    {
        if (txtmuayenebedel.Text == "")
        {
            txtmuayenebedel.Text = "0";
        }
        else
        lblodeme.Text = (Convert.ToInt32(txtaracbedel.Text) + Convert.ToInt32(txtsigortabedel.Text)+ Convert.ToInt32(txtkasobedel.Text)+Convert.ToInt32(txtmuayenebedel.Text)).ToString();
  
    }
    protected void txtntutar_TextChanged(object sender, EventArgs e)
    {
        if (txtntutar.Text == "")
        {
            txtntutar.Text = "0";
        }
        else
        lbltutar.Text = (Convert.ToInt32(txtnbtutar.Text) + Convert.ToInt32(txtntutar.Text) + Convert.ToInt32(txtktutar.Text) + Convert.ToInt32(txtctutar.Text) + Convert.ToInt32(txtttutar.Text)).ToString();
  
    }
    protected void txtktutar_TextChanged(object sender, EventArgs e)
    {
        if (txtktutar.Text == "")
        {
            txtktutar.Text = "0";
        }
        else
        lbltutar.Text = (Convert.ToInt32(txtnbtutar.Text) + Convert.ToInt32(txtntutar.Text) + Convert.ToInt32(txtktutar.Text) + Convert.ToInt32(txtctutar.Text) + Convert.ToInt32(txtttutar.Text)).ToString();
  
    }
    protected void txtctutar_TextChanged(object sender, EventArgs e)
    {
        if (txtctutar.Text == "")
        {
            txtctutar.Text = "0";
        }
        else
        lbltutar.Text = (Convert.ToInt32(txtnbtutar.Text) + Convert.ToInt32(txtntutar.Text) + Convert.ToInt32(txtktutar.Text) + Convert.ToInt32(txtctutar.Text) + Convert.ToInt32(txtttutar.Text)).ToString();
  
    }
    protected void txtttutar_TextChanged(object sender, EventArgs e)
    {
        if (txtttutar.Text == "")
        {
            txtttutar.Text = "0";
        }
        else
        lbltutar.Text = (Convert.ToInt32(txtnbtutar.Text) + Convert.ToInt32(txtntutar.Text) + Convert.ToInt32(txtktutar.Text) + Convert.ToInt32(txtctutar.Text) + Convert.ToInt32(txtttutar.Text)).ToString();
  
    }
    protected void btnkaydet_Click(object sender, EventArgs e)
    {
        if (txtaracbedel.Text=="0")
        {
            lblaracbedel.Visible = true;
        }
        else if (txtnbtutar.Text != "0" || txtttutar.Text != "0" || txtktutar.Text != "0" || txtctutar.Text != "0" || txtntutar.Text != "0" || txtnbtutar.Text != "" || txtttutar.Text != "" || txtktutar.Text != "" || txtctutar.Text != "" || txtntutar.Text != "")
        {
            string toplam = (Convert.ToInt32(txtnbtutar.Text) + Convert.ToInt32(txtntutar.Text) + Convert.ToInt32(txtktutar.Text) + Convert.ToInt32(txtctutar.Text) + Convert.ToInt32(txtttutar.Text)).ToString();

            if (toplam != lblodeme.Text)
            {
                Response.Write("<script>alert('Ödeme Fiyatı ile Tutar Uyuşmuyor..')</script>");
            }
            else
            {
                HttpCookie myCookies = Request.Cookies["myCookie"];
                SqlConnection conn = new SqlConnection(connStr);
                SqlCommand cmd = new SqlCommand("rezerveet", conn);
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Parameters.AddWithValue("@cbanka", txtcbanka.Text.ToUpper());
                cmd.Parameters.AddWithValue("@ctarih", txtctarih.Text);
                cmd.Parameters.AddWithValue("@ctutar", txtctutar.Text);
                cmd.Parameters.AddWithValue("@kbanka", txtkbanka.Text.ToUpper());
                cmd.Parameters.AddWithValue("@ktutar", txtktutar.Text);
                cmd.Parameters.AddWithValue("@ktarih", txtktarih.Text);
                cmd.Parameters.AddWithValue("@mus_tipi", dpmustip.SelectedIndex);
                cmd.Parameters.AddWithValue("@nakit", txtntutar.Text);
                cmd.Parameters.AddWithValue("@nbbanka", txtnbbanka.Text);
                cmd.Parameters.AddWithValue("@nbtutar", txtnbtutar.Text);
                cmd.Parameters.AddWithValue("@tc", txttc.Text);
                if (txtfirma.Text != "")
                {
                    cmd.Parameters.AddWithValue("@firma_musteri", txtfirma.Text.ToUpper());
                }
                else if (txtad.Text != "")
                {
                    cmd.Parameters.AddWithValue("@firma_musteri", txtad.Text.ToUpper());
                }
                cmd.Parameters.AddWithValue("@vergi_no", txtvergino.Text);
                cmd.Parameters.AddWithValue("@tel", txttel.Text);
                cmd.Parameters.AddWithValue("@kasko_kodu", txtkaskokodu.Text.ToUpper());
                cmd.Parameters.AddWithValue("@kasko_degeri", txtkaskodegeri.Text);
                cmd.Parameters.AddWithValue("@fatura_bedeli", txtfaturabedeli.Text);
                cmd.Parameters.AddWithValue("@kullanim_amac", dptip.SelectedValue.ToString());
                cmd.Parameters.AddWithValue("@plaka_degiskiligi", chplaka.Checked);
                cmd.Parameters.AddWithValue("@gsm", txtgsm.Text);
                cmd.Parameters.AddWithValue("@il_id", Convert.ToInt32(dpil.SelectedValue.ToString()));
                cmd.Parameters.AddWithValue("@ilce_id", Convert.ToInt32(dpilce.SelectedValue.ToString()));
                cmd.Parameters.AddWithValue("@sigorta_bedeli", txtsigortabedel.Text);
                cmd.Parameters.AddWithValue("@muamele_bedeli", txtmuayenebedel.Text);
                cmd.Parameters.AddWithValue("@kasko_bedeli", txtkasobedel.Text);
                cmd.Parameters.AddWithValue("@odeme_fiyati", lblodeme.Text);
                cmd.Parameters.AddWithValue("@arac_bedel", txtaracbedel.Text);
                cmd.Parameters.AddWithValue("@rehinli_satis", chrehin.Checked);
                cmd.Parameters.AddWithValue("@tmarka_model", txttakas.Text.ToUpper());
                cmd.Parameters.AddWithValue("@ttarih", txtttarih.Text);
                cmd.Parameters.AddWithValue("@ttutar", txtttutar.Text);
                cmd.Parameters.AddWithValue("@aciklama", txtaciklama.Text.ToUpper());
                cmd.Parameters.AddWithValue("@adres", txtadres.Text);
                cmd.Parameters.AddWithValue("@rezerve_eden", myCookies["kullanici_ad"].ToString().ToUpper());
                cmd.Parameters.AddWithValue("@arac_id", Convert.ToInt32(Request.QueryString["aracid"]));

                conn.Open();
                int id = cmd.ExecuteNonQuery();
                if (id > 0)
                {
                    Response.Write("<script>alert('Araç Rezerve Edildi..')</script>");
                    Response.Redirect("~/araclistesi.aspx");
                }
                else
                {
                    Response.Write("<script>alert('Araç Rezerve Edilemedi..')</script>");
                }
                conn.Close();
            }
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
    protected void ImageButton1_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/araclistesi.aspx");
    }
    protected void ImageButton5_Click1(object sender, ImageClickEventArgs e)
    {
        Response.Redirect("~/araclistesi.aspx");
    }
    protected void txtkbanka_TextChanged(object sender, EventArgs e)
    {

    }
    protected void txtnbtutar_TextChanged(object sender, EventArgs e)
    {
        if (txtnbtutar.Text == "")
        {
            txtnbtutar.Text = "0";
        }
        else
        lbltutar.Text =(Convert.ToInt32(txtnbtutar.Text)+ Convert.ToInt32(txtntutar.Text) + Convert.ToInt32(txtktutar.Text) + Convert.ToInt32(txtctutar.Text) + Convert.ToInt32(txtttutar.Text)).ToString();
  
    }
    protected void ImageButton6_Click(object sender, ImageClickEventArgs e)
    {
        
    }
    protected void txtfaturabedeli_TextChanged(object sender, EventArgs e)
    {

    }

    protected void CustomValidator1_ServerValidate(object source, ServerValidateEventArgs args)
    {
        if (args.Value.Length >1)
        {
            args.IsValid = true;
        }
        else
            args.IsValid = false;
    }
}