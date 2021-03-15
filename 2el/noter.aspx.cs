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
public partial class noter : System.Web.UI.Page
{
    string connStr = WebConfigurationManager.ConnectionStrings["mydb"].ConnectionString;

    public static int a;
    protected void Page_Load(object sender, EventArgs e)
    {
        
        HttpCookie myCookies = Request.Cookies["myCookie"];

        if (!Page.IsPostBack)
        {
            if (myCookies["Yetki_Id"].ToString() == "5")
            {
                gnoter.Visible = true;
                gfiltre.Visible = false;
               
                Label1.Text = myCookies["kullanici_ad"].ToString() + "[Çıkış]";
            }
        }
        lblms.Text = "";
        lblms.Text = "Tabloda '" + gnoter.Rows.Count + "' Kayıt Bulunmaktadır.";
    }
    public DataTable plaka_listele(string plaka)
    {
        string c = "ww";
        SqlConnection con = new SqlConnection(connStr);
        SqlCommand cmd = new SqlCommand("noter_filtre", con);
        cmd.Parameters.AddWithValue("@plaka", plaka);
        cmd.Parameters.AddWithValue("@arama", "plaka");
        
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
    protected void gfiltre_SelectedIndexChanged(object sender, EventArgs e)
    {
     
        int selectedRowIndex;
        selectedRowIndex = gfiltre.SelectedIndex;
        //Seçilen verinin ad ve soyad bilgisini alacağımız için ilgili değişkenleri tanımladım. 
        GridViewRow row = gfiltre.Rows[selectedRowIndex];

        //label kontrolüme verilerimi yazdırdım.
         a = Convert.ToInt32(row.Cells[2].Text);

        HttpCookie myCookiee = new HttpCookie("myCookiee");
        myCookiee["durumu"] = row.Cells[8].Text;
        myCookiee.Expires = DateTime.Now.AddDays(1); // cookiesimiz 1 saat kalsın dedik.
        Response.Cookies.Add(myCookiee); // cookies ekledik
        Response.Redirect("NoterFoy.aspx?aracid=" + a + "");
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
    protected void gfiltre_RowDataBound(object sender, GridViewRowEventArgs e)
    {
        if (e.Row.RowType == DataControlRowType.DataRow)
        {
            e.Row.Attributes.Add("onmouseover", "this.originalstyle=this.style.backgroundColor;this.style.backgroundColor='#e0b186'");
            e.Row.Attributes.Add("onmouseout", "this.style.backgroundColor=this.originalstyle;");
        }
    }
    protected void gnoter_RowDataBound(object sender, GridViewRowEventArgs e)
    {
        if (e.Row.RowType == DataControlRowType.DataRow)
        {
            e.Row.Attributes.Add("onmouseover", "this.originalstyle=this.style.backgroundColor;this.style.backgroundColor='#e0b186'");
            e.Row.Attributes.Add("onmouseout", "this.style.backgroundColor=this.originalstyle;");
        }
    }
    protected void gfiltre_RowCommand(object sender, GridViewCommandEventArgs e)
    {

        if (e.CommandName == "sec")
        {
            int sirano = Convert.ToInt32(e.CommandArgument);
            GridViewRow satırbilgisi = gfiltre.Rows[sirano];
            HttpCookie myCookiee = new HttpCookie("myCookiee");
            myCookiee["durumu"] = satırbilgisi.Cells[8].Text;
            myCookiee.Expires = DateTime.Now.AddDays(1); // cookiesimiz 1 saat kalsın dedik.
            Response.Cookies.Add(myCookiee); // cookies ekledik
            Response.Redirect("NoterFoy.aspx?aracid=" + satırbilgisi.Cells[2].Text + "");


        }
    }
    protected void btnara_Click(object sender, EventArgs e)
    {
        if (txtplaka.Text != "")
        {
            gfiltre.Visible = true;
            gfiltre.DataSource = plaka_listele(txtplaka.Text);
            gfiltre.DataBind();
            gnoter.Visible = false;


        }
    }
    protected void gfiltre_PageIndexChanging(object sender, GridViewPageEventArgs e)
    {
        if (txtplaka.Text != "")
        {
            gfiltre.PageIndex = e.NewPageIndex;
            gfiltre.Visible = true;
            gfiltre.DataSource = plaka_listele(txtplaka.Text);
            gfiltre.DataBind();
            gnoter.Visible = false;
           

        }
    }
    protected void SqlDataSource1_Selected(object sender, SqlDataSourceStatusEventArgs e)
    {
        //int RowCount = Convert.ToInt32(e.Command.Parameters["@return"].Value);
        //if (gnoter.Visible == true)
        //{
        //    lblms.Text = "";
        //    lblms.Text = "Tabloda '" + RowCount.ToString() + "' Kayıt Bulunmaktadır.";
        //}
    }
    protected void gnoter_SelectedIndexChanged(object sender, EventArgs e)
    {
        int selectedRowIndex;
        selectedRowIndex = gnoter.SelectedIndex;
        //Seçilen verinin ad ve soyad bilgisini alacağımız için ilgili değişkenleri tanımladım. 
        GridViewRow row = gnoter.Rows[selectedRowIndex];

        //label kontrolüme verilerimi yazdırdım.
        a = Convert.ToInt32(row.Cells[2].Text);

        HttpCookie myCookiee = new HttpCookie("myCookiee");
        myCookiee["durumu"] = row.Cells[8].Text;
        myCookiee.Expires = DateTime.Now.AddDays(1); // cookiesimiz 1 saat kalsın dedik.
        Response.Cookies.Add(myCookiee); // cookies ekledik
        Response.Redirect("NoterFoy.aspx?aracid=" + a + "");
    
    }
    protected void SqlDataSource1_Selecting(object sender, SqlDataSourceSelectingEventArgs e)
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
}