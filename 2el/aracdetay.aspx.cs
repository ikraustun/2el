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
using System.Globalization;

public partial class aracdetay : System.Web.UI.Page
{
    string connStr = WebConfigurationManager.ConnectionStrings["mydb"].ConnectionString;

    protected void Page_Load(object sender, EventArgs e)
    {
        HttpCookie myCookiess = Request.Cookies["myCookiee"];
        HttpCookie myCookies = Request.Cookies["myCookie"];
        Label1.Text = myCookies["kullanici_ad"].ToString()+"[Çıkış]";
        if (!Page.IsPostBack)
        {
            if (myCookies["Yetki_Id"].ToString() == "6")
            {
                FormView2.ChangeMode(FormViewMode.ReadOnly);
                btnrezerve.Visible = true;
                btnsatisfoy.Visible = false;
                Button2.Visible = false;
            }
            if (myCookiess["durumu"].ToString() == "Aktif" && myCookies["kullanici_ad"].ToString() == "Erdem Erken" || myCookies["kullanici_ad"].ToString() == "Emrah Emici")
            {

                ((TextBox)FormView2.FindControl("satis_fiyatTextBox")).ReadOnly=true;
                ((TextBox)FormView2.FindControl("alis_fiyatTextBox")).ReadOnly=true;
                ((TextBox)FormView2.FindControl("model_yiliTextBox")).ReadOnly=true;
                ((TextBox)FormView2.FindControl("kmTextBox")).ReadOnly=true;
                ((TextBox)FormView2.FindControl("masraf1TextBox")).ReadOnly=true;
                ((TextBox)FormView2.FindControl("masraf2TextBox")).ReadOnly=true;
                ((TextBox)FormView2.FindControl("motorTextBox")).ReadOnly=true;
                ((TextBox)FormView2.FindControl("gucTextBox")).ReadOnly=true;
                ((TextBox)FormView2.FindControl("motor_noTextBox")).ReadOnly=true;
                ((TextBox)FormView2.FindControl("sase_noTextBox")).ReadOnly=true;
                ((TextBox)FormView2.FindControl("muayenetarihTextBox")).ReadOnly=true;
                ((TextBox)FormView2.FindControl("alistarihTextBox")).ReadOnly=true;
                ((TextBox)FormView2.FindControl("gecicitarihTextBox")).ReadOnly=true;
              
                ((TextBox)FormView2.FindControl("sahipTextBox")).ReadOnly = true;
                ((DropDownList)FormView2.FindControl("dparacdurum")).Enabled = false;
                ((TextBox)FormView2.FindControl("top_maaliyetTextBox")).ReadOnly = true; 
                ((CheckBox)FormView2.FindControl("y_anahtarCheckBox")).Enabled = false;
                if (((CheckBox)FormView2.FindControl("c1CheckBox")).Checked)
                {
                    ((ListBox)FormView2.FindControl("ListBox1")).Items.Add("Arka Tampon Boyalı");
                }
                if (((CheckBox)FormView2.FindControl("c4CheckBox")).Checked)
                {
                    ((ListBox)FormView2.FindControl("ListBox1")).Items.Add("Sağ Arka Çamurluk Değişmiş");
                }
                if (((CheckBox)FormView2.FindControl("c2CheckBox")).Checked)
                {
                    ((ListBox)FormView2.FindControl("ListBox1")).Items.Add("Arka Tampon Değişmiş");
                }
                if (((CheckBox)FormView2.FindControl("c3CheckBox")).Checked)
                {
                    ((ListBox)FormView2.FindControl("ListBox1")).Items.Add("Sağ Arka Çamurluk Boyalı");
                }
                if (((CheckBox)FormView2.FindControl("c19CheckBox")).Checked)
                {
                    ((ListBox)FormView2.FindControl("ListBox1")).Items.Add("Arka Kaput Boyalı");
                }
                if (((CheckBox)FormView2.FindControl("c20CheckBox")).Checked)
                {
                    ((ListBox)FormView2.FindControl("ListBox1")).Items.Add("Arka Kaput Değişmiş");
                }
                if (((CheckBox)FormView2.FindControl("c5CheckBox")).Checked)
                {
                    ((ListBox)FormView2.FindControl("ListBox1")).Items.Add("Sol Arka Çamurluk Boyalı");
                }
                if (((CheckBox)FormView2.FindControl("c6CheckBox")).Checked)
                {
                    ((ListBox)FormView2.FindControl("ListBox1")).Items.Add("Sol Arka Çamurluk Değişmiş");
                }
                if (((CheckBox)FormView2.FindControl("c7CheckBox")).Checked)
                {
                    ((ListBox)FormView2.FindControl("ListBox1")).Items.Add("Sağ Arka Kapı Boyalı");
                }
                if (((CheckBox)FormView2.FindControl("c8CheckBox")).Checked)
                {
                    ((ListBox)FormView2.FindControl("ListBox1")).Items.Add("Sağ Arka Kapı Değişmiş");
                }
                if (((CheckBox)FormView2.FindControl("c21CheckBox")).Checked)
                {
                    ((ListBox)FormView2.FindControl("ListBox1")).Items.Add("Tavan Boyalı");
                }
                if (((CheckBox)FormView2.FindControl("c22CheckBox")).Checked)
                {
                    ((ListBox)FormView2.FindControl("ListBox1")).Items.Add("Tavan Değişmiş");
                }
                if (((CheckBox)FormView2.FindControl("c9CheckBox")).Checked)
                {
                    ((ListBox)FormView2.FindControl("ListBox1")).Items.Add("Sol Arka Kapı Boyalı");
                }
                if (((CheckBox)FormView2.FindControl("c10CheckBox")).Checked)
                {
                    ((ListBox)FormView2.FindControl("ListBox1")).Items.Add("Sol Arka Kapı Değişmiş");
                }
                if (((CheckBox)FormView2.FindControl("c11CheckBox")).Checked)
                {
                    ((ListBox)FormView2.FindControl("ListBox1")).Items.Add("Sağ Ön Kapı Boyalı");
                }
                if (((CheckBox)FormView2.FindControl("c12CheckBox")).Checked)
                {
                    ((ListBox)FormView2.FindControl("ListBox1")).Items.Add("Sağ Ön Kapı Değişmiş");
                }
                if (((CheckBox)FormView2.FindControl("c13CheckBox")).Checked)
                {
                    ((ListBox)FormView2.FindControl("ListBox1")).Items.Add("Sol Ön Kapı Boyalı");
                }
                if (((CheckBox)FormView2.FindControl("c14CheckBox")).Checked)
                {
                    ((ListBox)FormView2.FindControl("ListBox1")).Items.Add("Sol Ön Kapı Değişmiş");
                }
                if (((CheckBox)FormView2.FindControl("c15CheckBox")).Checked)
                {
                    ((ListBox)FormView2.FindControl("ListBox1")).Items.Add("Sağ Ön Çamurluk Boyalı");
                }
                if (((CheckBox)FormView2.FindControl("c16CheckBox")).Checked)
                {
                    ((ListBox)FormView2.FindControl("ListBox1")).Items.Add("Sağ Ön Çamurluk Değişmiş");
                }
                if (((CheckBox)FormView2.FindControl("c23CheckBox")).Checked)
                {
                    ((ListBox)FormView2.FindControl("ListBox1")).Items.Add("Motor Kaputu Boyalı");
                }
                if (((CheckBox)FormView2.FindControl("c24CheckBox")).Checked)
                {
                    ((ListBox)FormView2.FindControl("ListBox1")).Items.Add("Motor Kaputu Değişmiş");
                }
                if (((CheckBox)FormView2.FindControl("c17CheckBox")).Checked)
                {
                    ((ListBox)FormView2.FindControl("ListBox1")).Items.Add("Sol Ön Çamurluk Boyalı");
                }
                if (((CheckBox)FormView2.FindControl("c18CheckBox")).Checked)
                {
                    ((ListBox)FormView2.FindControl("ListBox1")).Items.Add("Sol Ön Çamurluk Değişmiş");
                }
                if (((CheckBox)FormView2.FindControl("c25CheckBox")).Checked)
                {
                    ((ListBox)FormView2.FindControl("ListBox1")).Items.Add("Ön Tampon Boyalı");
                }
                if (((CheckBox)FormView2.FindControl("c26CheckBox")).Checked)
                {
                    ((ListBox)FormView2.FindControl("ListBox1")).Items.Add("Ön Tampon Değişmiş");
                }
                if (((CheckBox)FormView2.FindControl("y_anahtarCheckBox")).Checked)
                {
                    ((ListBox)FormView2.FindControl("ListBox1")).Items.Add("Yedek Anahtarı Var");
                }
                btnrezerve.Visible = true;
                btnsatisfoy.Visible = false;
                Button2.Visible = true;

            }
            if (myCookiess["durumu"].ToString() == "Aktif" && (myCookies["kullanici_ad"].ToString() == "Otoport" || myCookies["kullanici_ad"].ToString() == "Suleyman Atabay" || myCookies["kullanici_ad"].ToString() == "Musa Koksal" || myCookies["kullanici_ad"].ToString() == "Oncay Demir" || myCookies["kullanici_ad"].ToString() == "Tolga Seker"))
            {

                FormView2.ChangeMode(FormViewMode.ReadOnly);
                btnrezerve.Visible = true;
                btnsatisfoy.Visible = false;
                Button2.Visible = false;
            }

            if (myCookiess["durumu"].ToString() == "Rezerve" && myCookies["Yetki_Id"].ToString() == "1")
            {

                FormView2.ChangeMode(FormViewMode.ReadOnly);
                btnrezerve.Visible = false;
                btnsatisfoy.Visible = true;
                Button2.Visible = false;
            }
            if (myCookiess["durumu"].ToString() == "Satıldı" && myCookies["Yetki_Id"].ToString() == "1")
            {

                FormView2.ChangeMode(FormViewMode.ReadOnly);
                btnrezerve.Visible = false;
                btnsatisfoy.Visible = true;
                Button2.Visible = false;
            }
            // değişen  kısım if bloğunun son tarafına yetki id si 6 olanı tanımlıyoruz
            if (myCookiess["durumu"].ToString() == "Noter" && (myCookies["Yetki_Id"].ToString() == "1" || myCookies["Yetki_Id"].ToString() == "2" || myCookies["Yetki_Id"].ToString() == "3" || myCookies["Yetki_Id"].ToString() == "4" || myCookies["Yetki_Id"].ToString() == "6"))
            {

                FormView2.ChangeMode(FormViewMode.ReadOnly);
                btnrezerve.Visible = false;
                btnsatisfoy.Visible = true;
                Button2.Visible = false;

            }
            // ekleme yapılan yer 
            if (myCookiess["durumu"].ToString() == "Yonetim" && (myCookies["Yetki_Id"].ToString() == "1" || myCookies["Yetki_Id"].ToString() == "2" || myCookies["Yetki_Id"].ToString() == "3" || myCookies["Yetki_Id"].ToString() == "4" || myCookies["Yetki_Id"].ToString() == "6"))
            {

                FormView2.ChangeMode(FormViewMode.ReadOnly);
                btnrezerve.Visible = false;
                btnsatisfoy.Visible = true;
                Button2.Visible = false;
            }

            //ekleme bitiiği yer
            if (myCookiess["durumu"].ToString() == "Odeme" && myCookies["Yetki_Id"].ToString() == "1")
            {

                FormView2.ChangeMode(FormViewMode.ReadOnly);
                btnrezerve.Visible = false;
                btnsatisfoy.Visible = true;
                Button2.Visible = false;
            }
             if (myCookiess["durumu"].ToString() == "Aktif" && myCookies["Yetki_Id"].ToString() == "4")
             {
                 if (((CheckBox)FormView2.FindControl("c1CheckBox")).Checked)
                 {
                     ((ListBox)FormView2.FindControl("ListBox1")).Items.Add("Arka Tampon Boyalı");
                 }
                 if (((CheckBox)FormView2.FindControl("c4CheckBox")).Checked)
                 {
                     ((ListBox)FormView2.FindControl("ListBox1")).Items.Add("Sağ Arka Çamurluk Değişmiş");
                 }
                 if (((CheckBox)FormView2.FindControl("c2CheckBox")).Checked)
                 {
                     ((ListBox)FormView2.FindControl("ListBox1")).Items.Add("Arka Tampon Değişmiş");
                 }
                 if (((CheckBox)FormView2.FindControl("c3CheckBox")).Checked)
                 {
                     ((ListBox)FormView2.FindControl("ListBox1")).Items.Add("Sağ Arka Çamurluk Boyalı");
                 }
                 if (((CheckBox)FormView2.FindControl("c19CheckBox")).Checked)
                 {
                     ((ListBox)FormView2.FindControl("ListBox1")).Items.Add("Arka Kaput Boyalı");
                 }
                 if (((CheckBox)FormView2.FindControl("c20CheckBox")).Checked)
                 {
                     ((ListBox)FormView2.FindControl("ListBox1")).Items.Add("Arka Kaput Değişmiş");
                 }
                 if (((CheckBox)FormView2.FindControl("c5CheckBox")).Checked)
                 {
                     ((ListBox)FormView2.FindControl("ListBox1")).Items.Add("Sol Arka Çamurluk Boyalı");
                 }
                 if (((CheckBox)FormView2.FindControl("c6CheckBox")).Checked)
                 {
                     ((ListBox)FormView2.FindControl("ListBox1")).Items.Add("Sol Arka Çamurluk Değişmiş");
                 }
                 if (((CheckBox)FormView2.FindControl("c7CheckBox")).Checked)
                 {
                     ((ListBox)FormView2.FindControl("ListBox1")).Items.Add("Sağ Arka Kapı Boyalı");
                 }
                 if (((CheckBox)FormView2.FindControl("c8CheckBox")).Checked)
                 {
                     ((ListBox)FormView2.FindControl("ListBox1")).Items.Add("Sağ Arka Kapı Değişmiş");
                 }
                 if (((CheckBox)FormView2.FindControl("c21CheckBox")).Checked)
                 {
                     ((ListBox)FormView2.FindControl("ListBox1")).Items.Add("Tavan Boyalı");
                 }
                 if (((CheckBox)FormView2.FindControl("c22CheckBox")).Checked)
                 {
                     ((ListBox)FormView2.FindControl("ListBox1")).Items.Add("Tavan Değişmiş");
                 }
                 if (((CheckBox)FormView2.FindControl("c9CheckBox")).Checked)
                 {
                     ((ListBox)FormView2.FindControl("ListBox1")).Items.Add("Sol Arka Kapı Boyalı");
                 }
                 if (((CheckBox)FormView2.FindControl("c10CheckBox")).Checked)
                 {
                     ((ListBox)FormView2.FindControl("ListBox1")).Items.Add("Sol Arka Kapı Değişmiş");
                 }
                 if (((CheckBox)FormView2.FindControl("c11CheckBox")).Checked)
                 {
                     ((ListBox)FormView2.FindControl("ListBox1")).Items.Add("Sağ Ön Kapı Boyalı");
                 }
                 if (((CheckBox)FormView2.FindControl("c12CheckBox")).Checked)
                 {
                     ((ListBox)FormView2.FindControl("ListBox1")).Items.Add("Sağ Ön Kapı Değişmiş");
                 }
                 if (((CheckBox)FormView2.FindControl("c13CheckBox")).Checked)
                 {
                     ((ListBox)FormView2.FindControl("ListBox1")).Items.Add("Sol Ön Kapı Boyalı");
                 }
                 if (((CheckBox)FormView2.FindControl("c14CheckBox")).Checked)
                 {
                     ((ListBox)FormView2.FindControl("ListBox1")).Items.Add("Sol Ön Kapı Değişmiş");
                 }
                 if (((CheckBox)FormView2.FindControl("c15CheckBox")).Checked)
                 {
                     ((ListBox)FormView2.FindControl("ListBox1")).Items.Add("Sağ Ön Çamurluk Boyalı");
                 }
                 if (((CheckBox)FormView2.FindControl("c16CheckBox")).Checked)
                 {
                     ((ListBox)FormView2.FindControl("ListBox1")).Items.Add("Sağ Ön Çamurluk Değişmiş");
                 }
                 if (((CheckBox)FormView2.FindControl("c23CheckBox")).Checked)
                 {
                     ((ListBox)FormView2.FindControl("ListBox1")).Items.Add("Motor Kaputu Boyalı");
                 }
                 if (((CheckBox)FormView2.FindControl("c24CheckBox")).Checked)
                 {
                     ((ListBox)FormView2.FindControl("ListBox1")).Items.Add("Motor Kaputu Değişmiş");
                 }
                 if (((CheckBox)FormView2.FindControl("c17CheckBox")).Checked)
                 {
                     ((ListBox)FormView2.FindControl("ListBox1")).Items.Add("Sol Ön Çamurluk Boyalı");
                 }
                 if (((CheckBox)FormView2.FindControl("c18CheckBox")).Checked)
                 {
                     ((ListBox)FormView2.FindControl("ListBox1")).Items.Add("Sol Ön Çamurluk Değişmiş");
                 }
                 if (((CheckBox)FormView2.FindControl("c25CheckBox")).Checked)
                 {
                     ((ListBox)FormView2.FindControl("ListBox1")).Items.Add("Ön Tampon Boyalı");
                 }
                 if (((CheckBox)FormView2.FindControl("c26CheckBox")).Checked)
                 {
                     ((ListBox)FormView2.FindControl("ListBox1")).Items.Add("Ön Tampon Değişmiş");
                 }
                 if (((CheckBox)FormView2.FindControl("y_anahtarCheckBox")).Checked)
                 {
                     ((ListBox)FormView2.FindControl("ListBox1")).Items.Add("Yedek Anahtarı Var");
                 }
                btnrezerve.Visible = false;
                btnsatisfoy.Visible = false;
                Button2.Visible = true;
            }
            if (myCookiess["durumu"].ToString() == "Rezerve" && myCookies["Yetki_Id"].ToString() == "4")
            {
                FormView2.ChangeMode(FormViewMode.ReadOnly);
                btnrezerve.Visible = false;
                btnsatisfoy.Visible = true;
                Button2.Visible = false;
            }
            if (myCookiess["durumu"].ToString() == "Noter" && myCookies["Yetki_Id"].ToString() == "4")
            {
                FormView2.ChangeMode(FormViewMode.ReadOnly);
                btnrezerve.Visible = false;
                btnsatisfoy.Visible = true;
                Button2.Visible = false;
            }
            if (myCookiess["durumu"].ToString() == "Odeme" && myCookies["Yetki_Id"].ToString() == "4")
            {

                FormView2.ChangeMode(FormViewMode.ReadOnly);
                btnrezerve.Visible = false;
                btnsatisfoy.Visible = true;
                Button2.Visible = true;
            }
           
             if (myCookiess["durumu"].ToString() == "Aktif" && myCookies["Yetki_Id"].ToString() == "2")
            {
                FormView2.ChangeMode(FormViewMode.ReadOnly);
                btnrezerve.Visible = true;
                btnsatisfoy.Visible = false;
                Button2.Visible = false;
            }
             if (myCookiess["durumu"].ToString() == "Rezerve" && myCookies["Yetki_Id"].ToString() == "2")
            {
                FormView2.ChangeMode(FormViewMode.ReadOnly);
                btnrezerve.Visible = false;
                btnsatisfoy.Visible = true;
                Button2.Visible = false;

            }
            if (myCookiess["durumu"].ToString() == "Odeme" && myCookies["Yetki_Id"].ToString() == "2")
            {

                FormView2.ChangeMode(FormViewMode.ReadOnly);
                btnrezerve.Visible = false;
                btnsatisfoy.Visible = true;
                Button2.Visible = false;

            }
            if (myCookiess["durumu"].ToString() == "Satıldı" && myCookies["Yetki_Id"].ToString() == "2")
            {

                FormView2.ChangeMode(FormViewMode.ReadOnly);
                btnrezerve.Visible = false;
                btnsatisfoy.Visible = true;
                Button2.Visible = false;
            }
             if (myCookiess["durumu"].ToString() == "Odeme" && myCookies["Yetki_Id"].ToString() == "3")
            {
                ((TextBox)FormView2.FindControl("tramer1TextBox")).ReadOnly = true;
                ((TextBox)FormView2.FindControl("tramer2TextBox")).ReadOnly = true;
                ((TextBox)FormView2.FindControl("tramer3TextBox")).ReadOnly = true;
                ((TextBox)FormView2.FindControl("tramer4TextBox")).ReadOnly = true;
                ((TextBox)FormView2.FindControl("tramer5TextBox")).ReadOnly = true;
                ((TextBox)FormView2.FindControl("tramer_toplamTextBox")).ReadOnly = true;

                ((TextBox)FormView2.FindControl("satis_fiyatTextBox")).ReadOnly = true;
                ((TextBox)FormView2.FindControl("alis_fiyatTextBox")).ReadOnly = true;
                ((TextBox)FormView2.FindControl("model_yiliTextBox")).ReadOnly = true;
                ((TextBox)FormView2.FindControl("kmTextBox")).ReadOnly = true;
                ((TextBox)FormView2.FindControl("masraf1TextBox")).ReadOnly = false;
                ((TextBox)FormView2.FindControl("masraf2TextBox")).ReadOnly = false;
                ((TextBox)FormView2.FindControl("motorTextBox")).ReadOnly = true;
                ((TextBox)FormView2.FindControl("gucTextBox")).ReadOnly = true;
                ((TextBox)FormView2.FindControl("motor_noTextBox")).ReadOnly = true;
                ((TextBox)FormView2.FindControl("sase_noTextBox")).ReadOnly = true;
                ((TextBox)FormView2.FindControl("muayenetarihTextBox")).ReadOnly = true;
                ((TextBox)FormView2.FindControl("alistarihTextBox")).ReadOnly = true;
                ((TextBox)FormView2.FindControl("gecicitarihTextBox")).ReadOnly = true;
                ((TextBox)FormView2.FindControl("aciklamaTextBox")).ReadOnly = true;
                ((TextBox)FormView2.FindControl("sahipTextBox")).ReadOnly = true;
                ((DropDownList)FormView2.FindControl("dparacdurum")).Enabled = false;
                ((TextBox)FormView2.FindControl("top_maaliyetTextBox")).ReadOnly = true;
                ((CheckBox)FormView2.FindControl("y_anahtarCheckBox")).Enabled = false;
                ((CheckBox)FormView2.FindControl("c1CheckBox")).Enabled = false;
                  ((CheckBox)FormView2.FindControl("c1CheckBox")).Enabled = false;
                  ((CheckBox)FormView2.FindControl("c2CheckBox")).Enabled = false;
                  ((CheckBox)FormView2.FindControl("c3CheckBox")).Enabled = false;
                  ((CheckBox)FormView2.FindControl("c4CheckBox")).Enabled = false;
                  ((CheckBox)FormView2.FindControl("c5CheckBox")).Enabled = false;
                  ((CheckBox)FormView2.FindControl("c6CheckBox")).Enabled = false;
                  ((CheckBox)FormView2.FindControl("c7CheckBox")).Enabled = false;
                  ((CheckBox)FormView2.FindControl("c8CheckBox")).Enabled = false;
                  ((CheckBox)FormView2.FindControl("c9CheckBox")).Enabled = false;
                  ((CheckBox)FormView2.FindControl("c10CheckBox")).Enabled = false;
                  ((CheckBox)FormView2.FindControl("c11CheckBox")).Enabled = false;
                  ((CheckBox)FormView2.FindControl("c12CheckBox")).Enabled = false;
                  ((CheckBox)FormView2.FindControl("c13CheckBox")).Enabled = false;
                  ((CheckBox)FormView2.FindControl("c14CheckBox")).Enabled = false;
                  ((CheckBox)FormView2.FindControl("c15CheckBox")).Enabled = false;
                  ((CheckBox)FormView2.FindControl("c16CheckBox")).Enabled = false;
                  ((CheckBox)FormView2.FindControl("c17CheckBox")).Enabled = false;
                  ((CheckBox)FormView2.FindControl("c18CheckBox")).Enabled = false;
                  ((CheckBox)FormView2.FindControl("c19CheckBox")).Enabled = false;
                  ((CheckBox)FormView2.FindControl("c20CheckBox")).Enabled = false;
                  ((CheckBox)FormView2.FindControl("c21CheckBox")).Enabled = false;
                  ((CheckBox)FormView2.FindControl("c22CheckBox")).Enabled = false;
                  ((CheckBox)FormView2.FindControl("c23CheckBox")).Enabled = false;
                  ((CheckBox)FormView2.FindControl("c24CheckBox")).Enabled = false;
                  ((CheckBox)FormView2.FindControl("c25CheckBox")).Enabled = false;
                  ((CheckBox)FormView2.FindControl("c26CheckBox")).Enabled = false;
                  ((ListBox)FormView2.FindControl("ListBox1")).Enabled = false;
                btnrezerve.Visible = false;
                btnsatisfoy.Visible = true;
                Button2.Visible = true;
            }
             if (myCookiess["durumu"].ToString() == "Aktif" && myCookies["Yetki_Id"].ToString() == "3")
             {

                 ((TextBox)FormView2.FindControl("tramer1TextBox")).ReadOnly = true;
                 ((TextBox)FormView2.FindControl("tramer2TextBox")).ReadOnly = true;
                 ((TextBox)FormView2.FindControl("tramer3TextBox")).ReadOnly = true;
                 ((TextBox)FormView2.FindControl("tramer4TextBox")).ReadOnly = true;
                 ((TextBox)FormView2.FindControl("tramer5TextBox")).ReadOnly = true;
                 ((TextBox)FormView2.FindControl("tramer_toplamTextBox")).ReadOnly = true;

                 ((TextBox)FormView2.FindControl("satis_fiyatTextBox")).ReadOnly = true;
                 ((TextBox)FormView2.FindControl("alis_fiyatTextBox")).ReadOnly = true;
                 ((TextBox)FormView2.FindControl("model_yiliTextBox")).ReadOnly = true;
                 ((TextBox)FormView2.FindControl("kmTextBox")).ReadOnly = true;
                 ((TextBox)FormView2.FindControl("masraf1TextBox")).ReadOnly = false;
                 ((TextBox)FormView2.FindControl("masraf2TextBox")).ReadOnly = false;
                 ((TextBox)FormView2.FindControl("motorTextBox")).ReadOnly = true;
                 ((TextBox)FormView2.FindControl("gucTextBox")).ReadOnly = true;
                 ((TextBox)FormView2.FindControl("motor_noTextBox")).ReadOnly = true;
                 ((TextBox)FormView2.FindControl("sase_noTextBox")).ReadOnly = true;
                 ((TextBox)FormView2.FindControl("muayenetarihTextBox")).ReadOnly = true;
                 ((TextBox)FormView2.FindControl("alistarihTextBox")).ReadOnly = true;
                 ((TextBox)FormView2.FindControl("gecicitarihTextBox")).ReadOnly = true;
                 ((TextBox)FormView2.FindControl("aciklamaTextBox")).ReadOnly = true;
                 ((TextBox)FormView2.FindControl("sahipTextBox")).ReadOnly = true;
                 ((DropDownList)FormView2.FindControl("dparacdurum")).Enabled = false;
                 ((TextBox)FormView2.FindControl("top_maaliyetTextBox")).ReadOnly = true;
                 ((CheckBox)FormView2.FindControl("y_anahtarCheckBox")).Enabled = false;
                 ((CheckBox)FormView2.FindControl("c1CheckBox")).Enabled = false;
                 ((CheckBox)FormView2.FindControl("c1CheckBox")).Enabled = false;
                 ((CheckBox)FormView2.FindControl("c2CheckBox")).Enabled = false;
                 ((CheckBox)FormView2.FindControl("c3CheckBox")).Enabled = false;
                 ((CheckBox)FormView2.FindControl("c4CheckBox")).Enabled = false;
                 ((CheckBox)FormView2.FindControl("c5CheckBox")).Enabled = false;
                 ((CheckBox)FormView2.FindControl("c6CheckBox")).Enabled = false;
                 ((CheckBox)FormView2.FindControl("c7CheckBox")).Enabled = false;
                 ((CheckBox)FormView2.FindControl("c8CheckBox")).Enabled = false;
                 ((CheckBox)FormView2.FindControl("c9CheckBox")).Enabled = false;
                 ((CheckBox)FormView2.FindControl("c10CheckBox")).Enabled = false;
                 ((CheckBox)FormView2.FindControl("c11CheckBox")).Enabled = false;
                 ((CheckBox)FormView2.FindControl("c12CheckBox")).Enabled = false;
                 ((CheckBox)FormView2.FindControl("c13CheckBox")).Enabled = false;
                 ((CheckBox)FormView2.FindControl("c14CheckBox")).Enabled = false;
                 ((CheckBox)FormView2.FindControl("c15CheckBox")).Enabled = false;
                 ((CheckBox)FormView2.FindControl("c16CheckBox")).Enabled = false;
                 ((CheckBox)FormView2.FindControl("c17CheckBox")).Enabled = false;
                 ((CheckBox)FormView2.FindControl("c18CheckBox")).Enabled = false;
                 ((CheckBox)FormView2.FindControl("c19CheckBox")).Enabled = false;
                 ((CheckBox)FormView2.FindControl("c20CheckBox")).Enabled = false;
                 ((CheckBox)FormView2.FindControl("c21CheckBox")).Enabled = false;
                 ((CheckBox)FormView2.FindControl("c22CheckBox")).Enabled = false;
                 ((CheckBox)FormView2.FindControl("c23CheckBox")).Enabled = false;
                 ((CheckBox)FormView2.FindControl("c24CheckBox")).Enabled = false;
                 ((CheckBox)FormView2.FindControl("c25CheckBox")).Enabled = false;
                 ((CheckBox)FormView2.FindControl("c26CheckBox")).Enabled = false;
                 ((ListBox)FormView2.FindControl("ListBox1")).Enabled = false;
                 btnrezerve.Visible = false;
                 btnsatisfoy.Visible = false;
                 Button2.Visible = true;
            }
            if (myCookiess["durumu"].ToString() == "Rezerve" && myCookies["Yetki_Id"].ToString() == "3")
            {


                ((TextBox)FormView2.FindControl("tramer1TextBox")).ReadOnly = true;
                ((TextBox)FormView2.FindControl("tramer2TextBox")).ReadOnly = true;
                ((TextBox)FormView2.FindControl("tramer3TextBox")).ReadOnly = true;
                ((TextBox)FormView2.FindControl("tramer4TextBox")).ReadOnly = true;
                ((TextBox)FormView2.FindControl("tramer5TextBox")).ReadOnly = true;
                ((TextBox)FormView2.FindControl("tramer_toplamTextBox")).ReadOnly = true;

                ((TextBox)FormView2.FindControl("satis_fiyatTextBox")).ReadOnly = true;
                ((TextBox)FormView2.FindControl("alis_fiyatTextBox")).ReadOnly = true;
                ((TextBox)FormView2.FindControl("model_yiliTextBox")).ReadOnly = true;
                ((TextBox)FormView2.FindControl("kmTextBox")).ReadOnly = true;
                ((TextBox)FormView2.FindControl("masraf1TextBox")).ReadOnly = false;
                ((TextBox)FormView2.FindControl("masraf2TextBox")).ReadOnly = false;
                ((TextBox)FormView2.FindControl("motorTextBox")).ReadOnly = true;
                ((TextBox)FormView2.FindControl("gucTextBox")).ReadOnly = true;
                ((TextBox)FormView2.FindControl("motor_noTextBox")).ReadOnly = true;
                ((TextBox)FormView2.FindControl("sase_noTextBox")).ReadOnly = true;
                ((TextBox)FormView2.FindControl("muayenetarihTextBox")).ReadOnly = true;
                ((TextBox)FormView2.FindControl("alistarihTextBox")).ReadOnly = true;
                ((TextBox)FormView2.FindControl("gecicitarihTextBox")).ReadOnly = true;
                ((TextBox)FormView2.FindControl("aciklamaTextBox")).ReadOnly = true;
                ((TextBox)FormView2.FindControl("sahipTextBox")).ReadOnly = true;
                ((DropDownList)FormView2.FindControl("dparacdurum")).Enabled = false;
                ((TextBox)FormView2.FindControl("top_maaliyetTextBox")).ReadOnly = true;
                ((CheckBox)FormView2.FindControl("y_anahtarCheckBox")).Enabled = false;
                ((CheckBox)FormView2.FindControl("c1CheckBox")).Enabled = false;
                ((CheckBox)FormView2.FindControl("c1CheckBox")).Enabled = false;
                ((CheckBox)FormView2.FindControl("c2CheckBox")).Enabled = false;
                ((CheckBox)FormView2.FindControl("c3CheckBox")).Enabled = false;
                ((CheckBox)FormView2.FindControl("c4CheckBox")).Enabled = false;
                ((CheckBox)FormView2.FindControl("c5CheckBox")).Enabled = false;
                ((CheckBox)FormView2.FindControl("c6CheckBox")).Enabled = false;
                ((CheckBox)FormView2.FindControl("c7CheckBox")).Enabled = false;
                ((CheckBox)FormView2.FindControl("c8CheckBox")).Enabled = false;
                ((CheckBox)FormView2.FindControl("c9CheckBox")).Enabled = false;
                ((CheckBox)FormView2.FindControl("c10CheckBox")).Enabled = false;
                ((CheckBox)FormView2.FindControl("c11CheckBox")).Enabled = false;
                ((CheckBox)FormView2.FindControl("c12CheckBox")).Enabled = false;
                ((CheckBox)FormView2.FindControl("c13CheckBox")).Enabled = false;
                ((CheckBox)FormView2.FindControl("c14CheckBox")).Enabled = false;
                ((CheckBox)FormView2.FindControl("c15CheckBox")).Enabled = false;
                ((CheckBox)FormView2.FindControl("c16CheckBox")).Enabled = false;
                ((CheckBox)FormView2.FindControl("c17CheckBox")).Enabled = false;
                ((CheckBox)FormView2.FindControl("c18CheckBox")).Enabled = false;
                ((CheckBox)FormView2.FindControl("c19CheckBox")).Enabled = false;
                ((CheckBox)FormView2.FindControl("c20CheckBox")).Enabled = false;
                ((CheckBox)FormView2.FindControl("c21CheckBox")).Enabled = false;
                ((CheckBox)FormView2.FindControl("c22CheckBox")).Enabled = false;
                ((CheckBox)FormView2.FindControl("c23CheckBox")).Enabled = false;
                ((CheckBox)FormView2.FindControl("c24CheckBox")).Enabled = false;
                ((CheckBox)FormView2.FindControl("c25CheckBox")).Enabled = false;
                ((CheckBox)FormView2.FindControl("c26CheckBox")).Enabled = false;
                ((ListBox)FormView2.FindControl("ListBox1")).Enabled = false;
                btnrezerve.Visible = false;
                btnsatisfoy.Visible = true;
                Button2.Visible = true;
            }
            if (myCookiess["durumu"].ToString() == "Satıldı" && myCookies["Yetki_Id"].ToString() == "3")
            {


                ((TextBox)FormView2.FindControl("tramer1TextBox")).ReadOnly = true;
                ((TextBox)FormView2.FindControl("tramer2TextBox")).ReadOnly = true;
                ((TextBox)FormView2.FindControl("tramer3TextBox")).ReadOnly = true;
                ((TextBox)FormView2.FindControl("tramer4TextBox")).ReadOnly = true;
                ((TextBox)FormView2.FindControl("tramer5TextBox")).ReadOnly = true;
                ((TextBox)FormView2.FindControl("tramer_toplamTextBox")).ReadOnly = true;

                ((TextBox)FormView2.FindControl("satis_fiyatTextBox")).ReadOnly = true;
                ((TextBox)FormView2.FindControl("alis_fiyatTextBox")).ReadOnly = true;
                ((TextBox)FormView2.FindControl("model_yiliTextBox")).ReadOnly = true;
                ((TextBox)FormView2.FindControl("kmTextBox")).ReadOnly = true;
                ((TextBox)FormView2.FindControl("masraf1TextBox")).ReadOnly = false;
                ((TextBox)FormView2.FindControl("masraf2TextBox")).ReadOnly = false;
                ((TextBox)FormView2.FindControl("motorTextBox")).ReadOnly = true;
                ((TextBox)FormView2.FindControl("gucTextBox")).ReadOnly = true;
                ((TextBox)FormView2.FindControl("motor_noTextBox")).ReadOnly = true;
                ((TextBox)FormView2.FindControl("sase_noTextBox")).ReadOnly = true;
                ((TextBox)FormView2.FindControl("muayenetarihTextBox")).ReadOnly = true;
                ((TextBox)FormView2.FindControl("alistarihTextBox")).ReadOnly = true;
                ((TextBox)FormView2.FindControl("gecicitarihTextBox")).ReadOnly = true;
                ((TextBox)FormView2.FindControl("aciklamaTextBox")).ReadOnly = true;
                ((TextBox)FormView2.FindControl("sahipTextBox")).ReadOnly = true;
                ((DropDownList)FormView2.FindControl("dparacdurum")).Enabled = false;
                ((TextBox)FormView2.FindControl("top_maaliyetTextBox")).ReadOnly = true;
                ((CheckBox)FormView2.FindControl("y_anahtarCheckBox")).Enabled = false;
                ((CheckBox)FormView2.FindControl("c1CheckBox")).Enabled = false;
                ((CheckBox)FormView2.FindControl("c1CheckBox")).Enabled = false;
                ((CheckBox)FormView2.FindControl("c2CheckBox")).Enabled = false;
                ((CheckBox)FormView2.FindControl("c3CheckBox")).Enabled = false;
                ((CheckBox)FormView2.FindControl("c4CheckBox")).Enabled = false;
                ((CheckBox)FormView2.FindControl("c5CheckBox")).Enabled = false;
                ((CheckBox)FormView2.FindControl("c6CheckBox")).Enabled = false;
                ((CheckBox)FormView2.FindControl("c7CheckBox")).Enabled = false;
                ((CheckBox)FormView2.FindControl("c8CheckBox")).Enabled = false;
                ((CheckBox)FormView2.FindControl("c9CheckBox")).Enabled = false;
                ((CheckBox)FormView2.FindControl("c10CheckBox")).Enabled = false;
                ((CheckBox)FormView2.FindControl("c11CheckBox")).Enabled = false;
                ((CheckBox)FormView2.FindControl("c12CheckBox")).Enabled = false;
                ((CheckBox)FormView2.FindControl("c13CheckBox")).Enabled = false;
                ((CheckBox)FormView2.FindControl("c14CheckBox")).Enabled = false;
                ((CheckBox)FormView2.FindControl("c15CheckBox")).Enabled = false;
                ((CheckBox)FormView2.FindControl("c16CheckBox")).Enabled = false;
                ((CheckBox)FormView2.FindControl("c17CheckBox")).Enabled = false;
                ((CheckBox)FormView2.FindControl("c18CheckBox")).Enabled = false;
                ((CheckBox)FormView2.FindControl("c19CheckBox")).Enabled = false;
                ((CheckBox)FormView2.FindControl("c20CheckBox")).Enabled = false;
                ((CheckBox)FormView2.FindControl("c21CheckBox")).Enabled = false;
                ((CheckBox)FormView2.FindControl("c22CheckBox")).Enabled = false;
                ((CheckBox)FormView2.FindControl("c23CheckBox")).Enabled = false;
                ((CheckBox)FormView2.FindControl("c24CheckBox")).Enabled = false;
                ((CheckBox)FormView2.FindControl("c25CheckBox")).Enabled = false;
                ((CheckBox)FormView2.FindControl("c26CheckBox")).Enabled = false;
                ((ListBox)FormView2.FindControl("ListBox1")).Enabled = false;
                btnrezerve.Visible = false;
                btnsatisfoy.Visible = true;
                Button2.Visible = true;
            }
          
             if (myCookiess["durumu"].ToString() == "Satıldı" && myCookies["Yetki_Id"].ToString() == "4" )
            {
                if (((CheckBox)FormView2.FindControl("c1CheckBox")).Checked)
                {
                    ((ListBox)FormView2.FindControl("ListBox1")).Items.Add("Arka Tampon Boyalı");
                }
                if (((CheckBox)FormView2.FindControl("c4CheckBox")).Checked)
                {
                    ((ListBox)FormView2.FindControl("ListBox1")).Items.Add("Sağ Arka Çamurluk Değişmiş");
                }
                if (((CheckBox)FormView2.FindControl("c2CheckBox")).Checked)
                {
                    ((ListBox)FormView2.FindControl("ListBox1")).Items.Add("Arka Tampon Değişmiş");
                }
                if (((CheckBox)FormView2.FindControl("c3CheckBox")).Checked)
                {
                    ((ListBox)FormView2.FindControl("ListBox1")).Items.Add("Sağ Arka Çamurluk Boyalı");
                }
                if (((CheckBox)FormView2.FindControl("c19CheckBox")).Checked)
                {
                    ((ListBox)FormView2.FindControl("ListBox1")).Items.Add("Arka Kaput Boyalı");
                }
                if (((CheckBox)FormView2.FindControl("c20CheckBox")).Checked)
                {
                    ((ListBox)FormView2.FindControl("ListBox1")).Items.Add("Arka Kaput Değişmiş");
                }
                if (((CheckBox)FormView2.FindControl("c5CheckBox")).Checked)
                {
                    ((ListBox)FormView2.FindControl("ListBox1")).Items.Add("Sol Arka Çamurluk Boyalı");
                }
                if (((CheckBox)FormView2.FindControl("c6CheckBox")).Checked)
                {
                    ((ListBox)FormView2.FindControl("ListBox1")).Items.Add("Sol Arka Çamurluk Değişmiş");
                }
                if (((CheckBox)FormView2.FindControl("c7CheckBox")).Checked)
                {
                    ((ListBox)FormView2.FindControl("ListBox1")).Items.Add("Sağ Arka Kapı Boyalı");
                }
                if (((CheckBox)FormView2.FindControl("c8CheckBox")).Checked)
                {
                    ((ListBox)FormView2.FindControl("ListBox1")).Items.Add("Sağ Arka Kapı Değişmiş");
                }
                if (((CheckBox)FormView2.FindControl("c21CheckBox")).Checked)
                {
                    ((ListBox)FormView2.FindControl("ListBox1")).Items.Add("Tavan Boyalı");
                }
                if (((CheckBox)FormView2.FindControl("c22CheckBox")).Checked)
                {
                    ((ListBox)FormView2.FindControl("ListBox1")).Items.Add("Tavan Değişmiş");
                }
                if (((CheckBox)FormView2.FindControl("c9CheckBox")).Checked)
                {
                    ((ListBox)FormView2.FindControl("ListBox1")).Items.Add("Sol Arka Kapı Boyalı");
                }
                if (((CheckBox)FormView2.FindControl("c10CheckBox")).Checked)
                {
                    ((ListBox)FormView2.FindControl("ListBox1")).Items.Add("Sol Arka Kapı Değişmiş");
                }
                if (((CheckBox)FormView2.FindControl("c11CheckBox")).Checked)
                {
                    ((ListBox)FormView2.FindControl("ListBox1")).Items.Add("Sağ Ön Kapı Boyalı");
                }
                if (((CheckBox)FormView2.FindControl("c12CheckBox")).Checked)
                {
                    ((ListBox)FormView2.FindControl("ListBox1")).Items.Add("Sağ Ön Kapı Değişmiş");
                }
                if (((CheckBox)FormView2.FindControl("c13CheckBox")).Checked)
                {
                    ((ListBox)FormView2.FindControl("ListBox1")).Items.Add("Sol Ön Kapı Boyalı");
                }
                if (((CheckBox)FormView2.FindControl("c14CheckBox")).Checked)
                {
                    ((ListBox)FormView2.FindControl("ListBox1")).Items.Add("Sol Ön Kapı Değişmiş");
                }
                if (((CheckBox)FormView2.FindControl("c15CheckBox")).Checked)
                {
                    ((ListBox)FormView2.FindControl("ListBox1")).Items.Add("Sağ Ön Çamurluk Boyalı");
                }
                if (((CheckBox)FormView2.FindControl("c16CheckBox")).Checked)
                {
                    ((ListBox)FormView2.FindControl("ListBox1")).Items.Add("Sağ Ön Çamurluk Değişmiş");
                }
                if (((CheckBox)FormView2.FindControl("c23CheckBox")).Checked)
                {
                    ((ListBox)FormView2.FindControl("ListBox1")).Items.Add("Motor Kaputu Boyalı");
                }
                if (((CheckBox)FormView2.FindControl("c24CheckBox")).Checked)
                {
                    ((ListBox)FormView2.FindControl("ListBox1")).Items.Add("Motor Kaputu Değişmiş");
                }
                if (((CheckBox)FormView2.FindControl("c17CheckBox")).Checked)
                {
                    ((ListBox)FormView2.FindControl("ListBox1")).Items.Add("Sol Ön Çamurluk Boyalı");
                }
                if (((CheckBox)FormView2.FindControl("c18CheckBox")).Checked)
                {
                    ((ListBox)FormView2.FindControl("ListBox1")).Items.Add("Sol Ön Çamurluk Değişmiş");
                }
                if (((CheckBox)FormView2.FindControl("c25CheckBox")).Checked)
                {
                    ((ListBox)FormView2.FindControl("ListBox1")).Items.Add("Ön Tampon Boyalı");
                }
                if (((CheckBox)FormView2.FindControl("c26CheckBox")).Checked)
                {
                    ((ListBox)FormView2.FindControl("ListBox1")).Items.Add("Ön Tampon Değişmiş");
                }
                if (((CheckBox)FormView2.FindControl("y_anahtarCheckBox")).Checked)
                {
                    ((ListBox)FormView2.FindControl("ListBox1")).Items.Add("Yedek Anahtarı Var");
                }
                btnrezerve.Visible = false;
                btnsatisfoy.Visible = true;
                Button2.Visible = true;
            }
        
        
        }
       
    }


   
 
  
    protected void btnrezerve_Click(object sender, EventArgs e)
    {
        Response.Redirect("rezerve.aspx?aracid=" + Request.QueryString["aracid"] + "");
    
    }
    protected void btnsatisfoy_Click(object sender, EventArgs e)
    {
        Response.Redirect("satisfoy.aspx?aracid=" + Request.QueryString["aracid"] + "");
    
    }

  
    protected void UpdateButton_Click1(object sender, EventArgs e)
    {
        
        Response.Write("<script>alert('Aracınız Güncellendi..')</script>");
    }
    protected void UpdateCancelButton_Click2(object sender, EventArgs e)
    {
      
        Response.Redirect("~/araclistesi.aspx");
    }
    protected void c1CheckBox_CheckedChanged(object sender, EventArgs e)
    {
        if (((CheckBox)FormView2.FindControl("c1CheckBox")).Checked)
        {
            ((ListBox)FormView2.FindControl("ListBox1")).Items.Add("Arka Tampon Boyalı");
        }
        else
            ((ListBox)FormView2.FindControl("ListBox1")).Items.Remove("Arka Tampon Boyalı");
    }
    protected void c4CheckBox_CheckedChanged(object sender, EventArgs e)
    {
        if (((CheckBox)FormView2.FindControl("c4CheckBox")).Checked)
        {
            ((ListBox)FormView2.FindControl("ListBox1")).Items.Add("Sağ Arka Çamurluk Değişmiş");
        }
        else
            ((ListBox)FormView2.FindControl("ListBox1")).Items.Remove("Sağ Arka Çamurluk Değişmiş");
    }
    protected void c2CheckBox_CheckedChanged(object sender, EventArgs e)
    {
        if (((CheckBox)FormView2.FindControl("c2CheckBox")).Checked)
        {
            ((ListBox)FormView2.FindControl("ListBox1")).Items.Add("Arka Tampon Değişmiş");
        }
        else
            ((ListBox)FormView2.FindControl("ListBox1")).Items.Remove("Arka Tampon Değişmiş");
   
    }
    protected void c3CheckBox_CheckedChanged(object sender, EventArgs e)
    {
        if (((CheckBox)FormView2.FindControl("c3CheckBox")).Checked)
        {
            ((ListBox)FormView2.FindControl("ListBox1")).Items.Add("Sağ Arka Çamurluk Boyalı");
        }
        else
            ((ListBox)FormView2.FindControl("ListBox1")).Items.Remove("Sağ Arka Çamurluk Boyalı");
   
    }
    protected void c19CheckBox_CheckedChanged(object sender, EventArgs e)
    {
        if (((CheckBox)FormView2.FindControl("c19CheckBox")).Checked)
        {
            ((ListBox)FormView2.FindControl("ListBox1")).Items.Add("Arka Kaput Boyalı");
        }
        else
            ((ListBox)FormView2.FindControl("ListBox1")).Items.Remove("Arka Kaput Boyalı");
   
    }
    protected void c20CheckBox_CheckedChanged(object sender, EventArgs e)
    {
        if (((CheckBox)FormView2.FindControl("c20CheckBox")).Checked)
        {
            ((ListBox)FormView2.FindControl("ListBox1")).Items.Add("Arka Kaput Değişmiş");
        }
        else
            ((ListBox)FormView2.FindControl("ListBox1")).Items.Remove("Arka Kaput Değişmiş");
   
    }
    protected void c5CheckBox_CheckedChanged(object sender, EventArgs e)
    {
        if (((CheckBox)FormView2.FindControl("c5CheckBox")).Checked)
        {
            ((ListBox)FormView2.FindControl("ListBox1")).Items.Add("Sol Arka Çamurluk Boyalı");
        }
        else
            ((ListBox)FormView2.FindControl("ListBox1")).Items.Remove("Sol Arka Çamurluk Boyalı");
   
    }
    protected void c6CheckBox_CheckedChanged(object sender, EventArgs e)
    {
        if (((CheckBox)FormView2.FindControl("c6CheckBox")).Checked)
        {
            ((ListBox)FormView2.FindControl("ListBox1")).Items.Add("Sol Arka Çamurluk Değişmiş");
        }
        else
            ((ListBox)FormView2.FindControl("ListBox1")).Items.Remove("Sol Arka Çamurluk Değişmiş");
   
    }
    protected void c7CheckBox_CheckedChanged(object sender, EventArgs e)
    {
        if (((CheckBox)FormView2.FindControl("c7CheckBox")).Checked)
        {
            ((ListBox)FormView2.FindControl("ListBox1")).Items.Add("Sağ Arka Kapı Boyalı");
        }
        else
            ((ListBox)FormView2.FindControl("ListBox1")).Items.Remove("Sağ Arka Kapı Boyalı");
   
    }
    protected void c8CheckBox_CheckedChanged(object sender, EventArgs e)
    {

        if (((CheckBox)FormView2.FindControl("c8CheckBox")).Checked)
        {
            ((ListBox)FormView2.FindControl("ListBox1")).Items.Add("Sağ Arka Kapı Değişmiş");
        }
        else
            ((ListBox)FormView2.FindControl("ListBox1")).Items.Remove("Sağ Arka Kapı Değişmiş");
   
    }
    protected void c21CheckBox_CheckedChanged(object sender, EventArgs e)
    {
        if (((CheckBox)FormView2.FindControl("c21CheckBox")).Checked)
        {
            ((ListBox)FormView2.FindControl("ListBox1")).Items.Add("Tavan Boyalı");
        }
        else
            ((ListBox)FormView2.FindControl("ListBox1")).Items.Remove("Tavan Boyalı");
   
    }
    protected void c22CheckBox_CheckedChanged(object sender, EventArgs e)
    {
        if (((CheckBox)FormView2.FindControl("c22CheckBox")).Checked)
        {
            ((ListBox)FormView2.FindControl("ListBox1")).Items.Add("Tavan Değişmiş");
        }
        else
            ((ListBox)FormView2.FindControl("ListBox1")).Items.Remove("Tavan Değişmiş");
   
    }
    protected void c9CheckBox_CheckedChanged(object sender, EventArgs e)
    {
        if (((CheckBox)FormView2.FindControl("c9CheckBox")).Checked)
        {
            ((ListBox)FormView2.FindControl("ListBox1")).Items.Add("Sol Arka Kapı Boyalı");
        }
        else
            ((ListBox)FormView2.FindControl("ListBox1")).Items.Remove("Sol Arka Kapı Boyalı");
   
    }
    protected void c10CheckBox_CheckedChanged(object sender, EventArgs e)
    {
        if (((CheckBox)FormView2.FindControl("c10CheckBox")).Checked)
        {
            ((ListBox)FormView2.FindControl("ListBox1")).Items.Add("Sol Arka Kapı Değişmiş");
        }
        else
            ((ListBox)FormView2.FindControl("ListBox1")).Items.Remove("Sol Arka Kapı Değişmiş");
   
    }
    protected void c11CheckBox_CheckedChanged(object sender, EventArgs e)
    {
        if (((CheckBox)FormView2.FindControl("c11CheckBox")).Checked)
        {
            ((ListBox)FormView2.FindControl("ListBox1")).Items.Add("Sağ Ön Kapı Boyalı");
        }
        else
            ((ListBox)FormView2.FindControl("ListBox1")).Items.Remove("Sağ Ön Kapı Boyalı");
   
    }
    protected void c12CheckBox_CheckedChanged(object sender, EventArgs e)
    {
        if (((CheckBox)FormView2.FindControl("c12CheckBox")).Checked)
        {
            ((ListBox)FormView2.FindControl("ListBox1")).Items.Add("Sağ Ön Kapı Değişmiş");
        }
        else
            ((ListBox)FormView2.FindControl("ListBox1")).Items.Remove("Sağ Ön Kapı Değişmiş");
   
    }
    protected void c13CheckBox_CheckedChanged(object sender, EventArgs e)
    {
        if (((CheckBox)FormView2.FindControl("c13CheckBox")).Checked)
        {
            ((ListBox)FormView2.FindControl("ListBox1")).Items.Add("Sol Ön Kapı Boyalı");
        }
        else
            ((ListBox)FormView2.FindControl("ListBox1")).Items.Remove("Sol Ön Kapı Boyalı");
   
    }
    protected void c14CheckBox_CheckedChanged(object sender, EventArgs e)
    {
        if (((CheckBox)FormView2.FindControl("c14CheckBox")).Checked)
        {
            ((ListBox)FormView2.FindControl("ListBox1")).Items.Add("Sol Ön Kapı Değişmiş");
        }
        else
            ((ListBox)FormView2.FindControl("ListBox1")).Items.Remove("Sol Ön Kapı Değişmiş");
   
    }
    protected void c15CheckBox_CheckedChanged(object sender, EventArgs e)
    {
        if (((CheckBox)FormView2.FindControl("c15CheckBox")).Checked)
        {
            ((ListBox)FormView2.FindControl("ListBox1")).Items.Add("Sağ Ön Çamurluk Boyalı");
        }
        else
            ((ListBox)FormView2.FindControl("ListBox1")).Items.Remove("Sağ Ön Çamurluk Boyalı");
   
    }
    protected void c16CheckBox_CheckedChanged(object sender, EventArgs e)
    {

        if (((CheckBox)FormView2.FindControl("c16CheckBox")).Checked)
        {
            ((ListBox)FormView2.FindControl("ListBox1")).Items.Add("Sağ Ön Çamurluk Değişmiş");
        }
        else
            ((ListBox)FormView2.FindControl("ListBox1")).Items.Remove("Sağ Ön Çamurluk Değişmiş");
   
    }
    protected void c23CheckBox_CheckedChanged(object sender, EventArgs e)
    {
        if (((CheckBox)FormView2.FindControl("c23CheckBox")).Checked)
        {
            ((ListBox)FormView2.FindControl("ListBox1")).Items.Add("Motor Kaputu Boyalı");
        }
        else
            ((ListBox)FormView2.FindControl("ListBox1")).Items.Remove("Motor Kaputu Boyalı");
   
    }
    protected void c24CheckBox_CheckedChanged(object sender, EventArgs e)
    {
        if (((CheckBox)FormView2.FindControl("c24CheckBox")).Checked)
        {
            ((ListBox)FormView2.FindControl("ListBox1")).Items.Add("Motor Kaputu Değişmiş");
        }
        else
            ((ListBox)FormView2.FindControl("ListBox1")).Items.Remove("Motor Kaputu Değişmiş");
   
    }
    protected void c17CheckBox_CheckedChanged(object sender, EventArgs e)
    {
        if (((CheckBox)FormView2.FindControl("c17CheckBox")).Checked)
        {
            ((ListBox)FormView2.FindControl("ListBox1")).Items.Add("Sol Ön Çamurluk Boyalı");
        }
        else
            ((ListBox)FormView2.FindControl("ListBox1")).Items.Remove("Sol Ön Çamurluk Boyalı");
   
    }
    protected void c18CheckBox_CheckedChanged(object sender, EventArgs e)
    {

        if (((CheckBox)FormView2.FindControl("c18CheckBox")).Checked)
        {
            ((ListBox)FormView2.FindControl("ListBox1")).Items.Add("Sol Ön Çamurluk Değişmiş");
        }
        else
            ((ListBox)FormView2.FindControl("ListBox1")).Items.Remove("Sol Ön Çamurluk Değişmiş");
   
    }
    protected void c25CheckBox_CheckedChanged(object sender, EventArgs e)
    {
        if (((CheckBox)FormView2.FindControl("c25CheckBox")).Checked)
        {
            ((ListBox)FormView2.FindControl("ListBox1")).Items.Add("Ön Tampon Boyalı");
        }
        else
            ((ListBox)FormView2.FindControl("ListBox1")).Items.Remove("Ön Tampon Boyalı");
   
    }
    protected void c26CheckBox_CheckedChanged(object sender, EventArgs e)
    {
        if (((CheckBox)FormView2.FindControl("c26CheckBox")).Checked)
        {
            ((ListBox)FormView2.FindControl("ListBox1")).Items.Add("Ön Tampon Değişmiş");
        }
        else
            ((ListBox)FormView2.FindControl("ListBox1")).Items.Remove("Ön Tampon Değişmiş");
   
    }

    protected void FormView2_ItemUpdating(object sender, FormViewUpdateEventArgs e)
    {
      
    
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        
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
  
  
    
    protected void ImageButton5_Click(object sender, EventArgs e)
    {
        Response.Redirect("rezerve.aspx?aracid=" + Request.QueryString["aracid"] + "");
    }
    int masraf1 = 0, masraf2 = 0, top_maaliyet = 0, alisfiyat = 0;
    protected void Button2_Click1(object sender, EventArgs e)
    {
        string b = "";
      
        masraf1 = Convert.ToInt32(((TextBox)FormView2.FindControl("masraf1TextBox")).Text);
        masraf2 = Convert.ToInt32(((TextBox)FormView2.FindControl("masraf2TextBox")).Text);
        alisfiyat=Convert.ToInt32(((TextBox)FormView2.FindControl("alis_fiyatTextBox")).Text);
        top_maaliyet = masraf1 + masraf2 + alisfiyat;
        SqlConnection conn = new SqlConnection(connStr);
        SqlCommand cmd = new SqlCommand("arac_guncelle", conn);
        cmd.CommandType = CommandType.StoredProcedure;

        for (int i = 0; i < ((ListBox)FormView2.FindControl("ListBox1")).Items.Count; i++)
        {
            b += ((ListBox)FormView2.FindControl("ListBox1")).Items[i].ToString() + "<br/>";

        }
        cmd.Parameters.AddWithValue("@ekspertiz_raporu", b);
        cmd.Parameters.AddWithValue("@hasar1", ((TextBox)FormView2.FindControl("tramer1TextBox")).Text);
        cmd.Parameters.AddWithValue("@hasar2", ((TextBox)FormView2.FindControl("tramer2TextBox")).Text);
        cmd.Parameters.AddWithValue("@hasar3", ((TextBox)FormView2.FindControl("tramer3TextBox")).Text);
        cmd.Parameters.AddWithValue("@hasar4", ((TextBox)FormView2.FindControl("tramer4TextBox")).Text);
        cmd.Parameters.AddWithValue("@hasar5", ((TextBox)FormView2.FindControl("tramer5TextBox")).Text);
        cmd.Parameters.AddWithValue("@hasar_toplam", ((TextBox)FormView2.FindControl("tramer_toplamTextBox")).Text);
        cmd.Parameters.AddWithValue("@satis_fiyat", ((TextBox)FormView2.FindControl("satis_fiyatTextBox")).Text);
        cmd.Parameters.AddWithValue("@alis_fiyat", ((TextBox)FormView2.FindControl("alis_fiyatTextBox")).Text);
        cmd.Parameters.AddWithValue("@model_yili", ((TextBox)FormView2.FindControl("model_yiliTextBox")).Text);
        cmd.Parameters.AddWithValue("@km", ((TextBox)FormView2.FindControl("kmTextBox")).Text);
        cmd.Parameters.AddWithValue("@masraf1", ((TextBox)FormView2.FindControl("masraf1TextBox")).Text);
        cmd.Parameters.AddWithValue("@masraf2", ((TextBox)FormView2.FindControl("masraf2TextBox")).Text);
        cmd.Parameters.AddWithValue("@top_maaliyet", top_maaliyet);
        cmd.Parameters.AddWithValue("@motor", ((TextBox)FormView2.FindControl("motorTextBox")).Text);
        cmd.Parameters.AddWithValue("@guc", ((TextBox)FormView2.FindControl("gucTextBox")).Text);
        cmd.Parameters.AddWithValue("@arac_durum", ((DropDownList)FormView2.FindControl("dparacdurum")).SelectedValue.ToString());
        cmd.Parameters.AddWithValue("@motor_no", ((TextBox)FormView2.FindControl("motor_noTextBox")).Text);
        cmd.Parameters.AddWithValue("@sase_no", ((TextBox)FormView2.FindControl("sase_noTextBox")).Text);

        cmd.Parameters.AddWithValue("@muayene_tarih", (((TextBox)FormView2.FindControl("muayenetarihTextBox")).Text).ToString());
      
        cmd.Parameters.AddWithValue("@aciklama", ((TextBox)FormView2.FindControl("aciklamaTextBox")).Text);
        cmd.Parameters.AddWithValue("@yedek_anahtar", ((CheckBox)FormView2.FindControl("y_anahtarCheckBox")).Checked);
        cmd.Parameters.AddWithValue("@c1", ((CheckBox)FormView2.FindControl("c1CheckBox")).Checked);
        cmd.Parameters.AddWithValue("@c2", ((CheckBox)FormView2.FindControl("c2CheckBox")).Checked);
        cmd.Parameters.AddWithValue("@c3", ((CheckBox)FormView2.FindControl("c3CheckBox")).Checked);
        cmd.Parameters.AddWithValue("@c4", ((CheckBox)FormView2.FindControl("c4CheckBox")).Checked);
        cmd.Parameters.AddWithValue("@c5", ((CheckBox)FormView2.FindControl("c5CheckBox")).Checked);
        cmd.Parameters.AddWithValue("@c6", ((CheckBox)FormView2.FindControl("c6CheckBox")).Checked);
        cmd.Parameters.AddWithValue("@c7", ((CheckBox)FormView2.FindControl("c7CheckBox")).Checked);
        cmd.Parameters.AddWithValue("@c8", ((CheckBox)FormView2.FindControl("c8CheckBox")).Checked);
        cmd.Parameters.AddWithValue("@c9", ((CheckBox)FormView2.FindControl("c9CheckBox")).Checked);
        cmd.Parameters.AddWithValue("@c10", ((CheckBox)FormView2.FindControl("c10CheckBox")).Checked);
        cmd.Parameters.AddWithValue("@c11", ((CheckBox)FormView2.FindControl("c11CheckBox")).Checked);
        cmd.Parameters.AddWithValue("@c12", ((CheckBox)FormView2.FindControl("c12CheckBox")).Checked);
        cmd.Parameters.AddWithValue("@c13", ((CheckBox)FormView2.FindControl("c13CheckBox")).Checked);
        cmd.Parameters.AddWithValue("@c14", ((CheckBox)FormView2.FindControl("c14CheckBox")).Checked);
        cmd.Parameters.AddWithValue("@c15", ((CheckBox)FormView2.FindControl("c15CheckBox")).Checked);
        cmd.Parameters.AddWithValue("@c16", ((CheckBox)FormView2.FindControl("c16CheckBox")).Checked);
        cmd.Parameters.AddWithValue("@c17", ((CheckBox)FormView2.FindControl("c17CheckBox")).Checked);
        cmd.Parameters.AddWithValue("@c18", ((CheckBox)FormView2.FindControl("c18CheckBox")).Checked);
        cmd.Parameters.AddWithValue("@c19", ((CheckBox)FormView2.FindControl("c19CheckBox")).Checked);
        cmd.Parameters.AddWithValue("@c20", ((CheckBox)FormView2.FindControl("c20CheckBox")).Checked);
        cmd.Parameters.AddWithValue("@c21", ((CheckBox)FormView2.FindControl("c21CheckBox")).Checked);
        cmd.Parameters.AddWithValue("@c22", ((CheckBox)FormView2.FindControl("c22CheckBox")).Checked);
        cmd.Parameters.AddWithValue("@c23", ((CheckBox)FormView2.FindControl("c23CheckBox")).Checked);
        cmd.Parameters.AddWithValue("@c24", ((CheckBox)FormView2.FindControl("c24CheckBox")).Checked);
        cmd.Parameters.AddWithValue("@c25", ((CheckBox)FormView2.FindControl("c25CheckBox")).Checked);
        cmd.Parameters.AddWithValue("@c26", ((CheckBox)FormView2.FindControl("c26CheckBox")).Checked);
        cmd.Parameters.AddWithValue("@aracid", Convert.ToInt32(Request.QueryString["aracid"]));
        conn.Open();
        cmd.ExecuteNonQuery();
        conn.Close();

        Response.Write("<script>alert('Güncelleme İşleminiz Gerçekleşti.')</script>");
        
    }
protected void  btnsatisfoy_Click1(object sender, EventArgs e)
{
    Response.Redirect("satisfoy.aspx?aracid=" + Request.QueryString["aracid"] + "");
}


protected void y_anahtarCheckBox_CheckedChanged(object sender, EventArgs e)
{

}
protected void y_anahtarCheckBox_CheckedChanged1(object sender, EventArgs e)
{
    if (((CheckBox)FormView2.FindControl("y_anahtarCheckBox")).Checked)
    {
        ((ListBox)FormView2.FindControl("ListBox1")).Items.Add("Yedek Anahtarı Var");
    }
    else
        ((ListBox)FormView2.FindControl("ListBox1")).Items.Remove("Yedek Anahtarı Var");
   
}
protected void tramer1TextBox_TextChanged(object sender, EventArgs e)
{
    ((TextBox)FormView2.FindControl("tramer_toplamTextBox")).Text = (Convert.ToInt32(((TextBox)FormView2.FindControl("tramer1TextBox")).Text) + Convert.ToInt32(((TextBox)FormView2.FindControl("tramer2TextBox")).Text) + Convert.ToInt32(((TextBox)FormView2.FindControl("tramer3TextBox")).Text) + Convert.ToInt32(((TextBox)FormView2.FindControl("tramer4TextBox")).Text) + Convert.ToInt32(((TextBox)FormView2.FindControl("tramer5TextBox")).Text)).ToString();
}
protected void tramer2TextBox_TextChanged(object sender, EventArgs e)
{
    ((TextBox)FormView2.FindControl("tramer_toplamTextBox")).Text = (Convert.ToInt32(((TextBox)FormView2.FindControl("tramer1TextBox")).Text) + Convert.ToInt32(((TextBox)FormView2.FindControl("tramer2TextBox")).Text) + Convert.ToInt32(((TextBox)FormView2.FindControl("tramer3TextBox")).Text) + Convert.ToInt32(((TextBox)FormView2.FindControl("tramer4TextBox")).Text) + Convert.ToInt32(((TextBox)FormView2.FindControl("tramer5TextBox")).Text)).ToString();

}
protected void tramer3TextBox_TextChanged(object sender, EventArgs e)
{
    ((TextBox)FormView2.FindControl("tramer_toplamTextBox")).Text = (Convert.ToInt32(((TextBox)FormView2.FindControl("tramer1TextBox")).Text) + Convert.ToInt32(((TextBox)FormView2.FindControl("tramer2TextBox")).Text) + Convert.ToInt32(((TextBox)FormView2.FindControl("tramer3TextBox")).Text) + Convert.ToInt32(((TextBox)FormView2.FindControl("tramer4TextBox")).Text) + Convert.ToInt32(((TextBox)FormView2.FindControl("tramer5TextBox")).Text)).ToString();

}
protected void tramer4TextBox_TextChanged(object sender, EventArgs e)
{
    ((TextBox)FormView2.FindControl("tramer_toplamTextBox")).Text = (Convert.ToInt32(((TextBox)FormView2.FindControl("tramer1TextBox")).Text) + Convert.ToInt32(((TextBox)FormView2.FindControl("tramer2TextBox")).Text) + Convert.ToInt32(((TextBox)FormView2.FindControl("tramer3TextBox")).Text) + Convert.ToInt32(((TextBox)FormView2.FindControl("tramer4TextBox")).Text) + Convert.ToInt32(((TextBox)FormView2.FindControl("tramer5TextBox")).Text)).ToString();

}
protected void tramer5TextBox_TextChanged(object sender, EventArgs e)
{
    ((TextBox)FormView2.FindControl("tramer_toplamTextBox")).Text = (Convert.ToInt32(((TextBox)FormView2.FindControl("tramer1TextBox")).Text) + Convert.ToInt32(((TextBox)FormView2.FindControl("tramer2TextBox")).Text) + Convert.ToInt32(((TextBox)FormView2.FindControl("tramer3TextBox")).Text) + Convert.ToInt32(((TextBox)FormView2.FindControl("tramer4TextBox")).Text) + Convert.ToInt32(((TextBox)FormView2.FindControl("tramer5TextBox")).Text)).ToString();

}
protected void ImageButton5_Click1(object sender, ImageClickEventArgs e)
{
    Response.Redirect("~/araclistesi.aspx");
}
protected void alis_fiyatTextBox_TextChanged(object sender, EventArgs e)
{
    masraf2 = Convert.ToInt32(((TextBox)FormView2.FindControl("masraf2TextBox")).Text);
    masraf1 = Convert.ToInt32(((TextBox)FormView2.FindControl("masraf1TextBox")).Text);
    alisfiyat = Convert.ToInt32(((TextBox)FormView2.FindControl("alis_fiyatTextBox")).Text);
    ((TextBox)FormView2.FindControl("top_maaliyetTextBox")).Text = Convert.ToString(masraf2 + alisfiyat + masraf1);
}
protected void masraf1TextBox_TextChanged1(object sender, EventArgs e)
{
    masraf1 = Convert.ToInt32(((TextBox)FormView2.FindControl("masraf1TextBox")).Text);
    masraf2 = Convert.ToInt32(((TextBox)FormView2.FindControl("masraf2TextBox")).Text);
    alisfiyat = Convert.ToInt32(((TextBox)FormView2.FindControl("alis_fiyatTextBox")).Text);
    ((TextBox)FormView2.FindControl("top_maaliyetTextBox")).Text = Convert.ToString(masraf1 + alisfiyat + masraf2);

}
protected void masraf2TextBox_TextChanged(object sender, EventArgs e)
{
    masraf2 = Convert.ToInt32(((TextBox)FormView2.FindControl("masraf2TextBox")).Text);
    masraf1 = Convert.ToInt32(((TextBox)FormView2.FindControl("masraf1TextBox")).Text);
    alisfiyat = Convert.ToInt32(((TextBox)FormView2.FindControl("alis_fiyatTextBox")).Text);
    ((TextBox)FormView2.FindControl("top_maaliyetTextBox")).Text = Convert.ToString(masraf2 + alisfiyat + masraf1);

}

protected void ImageButton4_Click1(object sender, EventArgs e)
{
    Response.Redirect("~/araclistesi.aspx");
}
}