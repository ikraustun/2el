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

public partial class aracdetay : System.Web.UI.Page
{
    string connStr = WebConfigurationManager.ConnectionStrings["mydb"].ConnectionString;

    protected void Page_Load(object sender, EventArgs e)
    {
        HttpCookie myCookiess = Request.Cookies["myCookiee"];
        if (myCookiess["durumu"].ToString() == "Aktif")
        {
            btnrezerve.Visible = true;
            btnsatisfoy.Visible = false;

            //if (((CheckBox)FormView2.FindControl("c1CheckBox1")).Checked)
            //{
            //    ((CheckBox)FormView2.FindControl("c1CheckBox1")).BackColor = System.Drawing.Color.Silver;
            //}
            //if (((CheckBox)FormView2.FindControl("c2CheckBox1")).Checked)
            //{
            //    ((CheckBox)FormView2.FindControl("c2CheckBox1")).BackColor = System.Drawing.Color.Black;
            //}
            //if (((CheckBox)FormView2.FindControl("c3CheckBox1")).Checked)
            //{
            //    ((CheckBox)FormView2.FindControl("c3CheckBox1")).BackColor = System.Drawing.Color.Silver;
            //}
            //if (((CheckBox)FormView2.FindControl("c4CheckBox1")).Checked)
            //{
            //    ((CheckBox)FormView2.FindControl("c4CheckBox1")).BackColor = System.Drawing.Color.Black;
            //}
            //if (((CheckBox)FormView2.FindControl("c5CheckBox1")).Checked)
            //{
            //    ((CheckBox)FormView2.FindControl("c5CheckBox1")).BackColor = System.Drawing.Color.Silver;
            //}
            //if (((CheckBox)FormView2.FindControl("c6CheckBox1")).Checked)
            //{
            //    ((CheckBox)FormView2.FindControl("c6CheckBox1")).BackColor = System.Drawing.Color.Black;
            //}
            //if (((CheckBox)FormView2.FindControl("c7CheckBox1")).Checked)
            //{
            //    ((CheckBox)FormView2.FindControl("c7CheckBox1")).BackColor = System.Drawing.Color.Silver;
            //}
            //if (((CheckBox)FormView2.FindControl("c8CheckBox1")).Checked)
            //{
            //    ((CheckBox)FormView2.FindControl("c8CheckBox1")).BackColor = System.Drawing.Color.Black;
            //}
            //if (((CheckBox)FormView2.FindControl("c9CheckBox1")).Checked)
            //{
            //    ((CheckBox)FormView2.FindControl("c9CheckBox1")).BackColor = System.Drawing.Color.Silver;
            //}
            //if (((CheckBox)FormView2.FindControl("c10CheckBox1")).Checked)
            //{
            //    ((CheckBox)FormView2.FindControl("c10CheckBox1")).BackColor = System.Drawing.Color.Black;
            //}
            //if (((CheckBox)FormView2.FindControl("c11CheckBox1")).Checked)
            //{
            //    ((CheckBox)FormView2.FindControl("c11CheckBox1")).BackColor = System.Drawing.Color.Silver;
            //}
            //if (((CheckBox)FormView2.FindControl("c12CheckBox1")).Checked)
            //{
            //    ((CheckBox)FormView2.FindControl("c12CheckBox1")).BackColor = System.Drawing.Color.Black;
            //}
            //if (((CheckBox)FormView2.FindControl("c13CheckBox1")).Checked)
            //{
            //    ((CheckBox)FormView2.FindControl("c13CheckBox1")).BackColor = System.Drawing.Color.Silver;
            //}
            //if (((CheckBox)FormView2.FindControl("c14CheckBox1")).Checked)
            //{
            //    ((CheckBox)FormView2.FindControl("c14CheckBox1")).BackColor = System.Drawing.Color.Black;
            //}
            //if (((CheckBox)FormView2.FindControl("c15CheckBox1")).Checked)
            //{
            //    ((CheckBox)FormView2.FindControl("c15CheckBox1")).BackColor = System.Drawing.Color.Silver;
            //}
            //if (((CheckBox)FormView2.FindControl("c16CheckBox1")).Checked)
            //{
            //    ((CheckBox)FormView2.FindControl("c16CheckBox1")).BackColor = System.Drawing.Color.Black;
            //}
            //if (((CheckBox)FormView2.FindControl("c17CheckBox1")).Checked)
            //{
            //    ((CheckBox)FormView2.FindControl("c17CheckBox1")).BackColor = System.Drawing.Color.Silver;
            //}
            //if (((CheckBox)FormView2.FindControl("c18CheckBox1")).Checked)
            //{
            //    ((CheckBox)FormView2.FindControl("c18CheckBox1")).BackColor = System.Drawing.Color.Black;
            //}
            //if (((CheckBox)FormView2.FindControl("c19CheckBox1")).Checked)
            //{
            //    ((CheckBox)FormView2.FindControl("c19CheckBox1")).BackColor = System.Drawing.Color.Silver;
            //}
            //if (((CheckBox)FormView2.FindControl("c20CheckBox1")).Checked)
            //{
            //    ((CheckBox)FormView2.FindControl("c20CheckBox1")).BackColor = System.Drawing.Color.Black;
            //}
            //if (((CheckBox)FormView2.FindControl("c21CheckBox1")).Checked)
            //{
            //    ((CheckBox)FormView2.FindControl("c21CheckBox1")).BackColor = System.Drawing.Color.Silver;
            //}
            //if (((CheckBox)FormView2.FindControl("c22CheckBox1")).Checked)
            //{
            //    ((CheckBox)FormView2.FindControl("c22CheckBox1")).BackColor = System.Drawing.Color.Black;
            //}
            //if (((CheckBox)FormView2.FindControl("c23CheckBox1")).Checked)
            //{
            //    ((CheckBox)FormView2.FindControl("c23CheckBox1")).BackColor = System.Drawing.Color.Silver;
            //}
            //if (((CheckBox)FormView2.FindControl("c24CheckBox1")).Checked)
            //{
            //    ((CheckBox)FormView2.FindControl("c24CheckBox1")).BackColor = System.Drawing.Color.Black;
            //}
            //if (((CheckBox)FormView2.FindControl("c25CheckBox1")).Checked)
            //{
            //    ((CheckBox)FormView2.FindControl("c25CheckBox1")).BackColor = System.Drawing.Color.Silver;
            //}
            //if (((CheckBox)FormView2.FindControl("c26CheckBox1")).Checked)
            //{
            //    ((CheckBox)FormView2.FindControl("c26CheckBox1")).BackColor = System.Drawing.Color.Black;
            //}
        }
        else if (myCookiess["durumu"].ToString() == "Rezerve")
        {
            Response.Redirect("satisfoy.aspx?aracid=" + Request.QueryString["aracid"] + "");
           
        }
        else if (myCookiess["durumu"].ToString() == "Satıldı")
        {
            Response.Redirect("satisfoy.aspx?aracid=" + Request.QueryString["aracid"] + "");
        }
        else if (myCookiess["durumu"].ToString() == "Odeme")
        {
            Response.Redirect("satisfoy.aspx?aracid=" + Request.QueryString["aracid"] + "");
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

    protected void Button1_Click(object sender, EventArgs e)
    {
        if (Request.Cookies["Yetki_Id"] != null && Request.Cookies["durumu"] == null)
        {
            HttpCookie myCookie = Request.Cookies["myCookie"]; // cookiesimizi okuduk
            myCookie.Expires = DateTime.Now.AddDays(-2);
            Response.Cookies.Add(myCookie); // cookies ekledik
        }
        else  if (Request.Cookies["durumu"] != null && Request.Cookies["Yetki_Id"] != null)
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
    protected void UpdateButton_Click1(object sender, EventArgs e)
    {
        
        Response.Write("<script>alert('Aracınız Güncellendi..')</script>");
    }
    protected void UpdateCancelButton_Click2(object sender, EventArgs e)
    {
      
        Response.Redirect("~/araclistesi.aspx");
    }
}