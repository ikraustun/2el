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
public partial class istenilenarac : System.Web.UI.Page
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


    protected void btnekle_Click(object sender, EventArgs e)
    {
        HttpCookie myCookies = Request.Cookies["myCookie"];
        SqlConnection conn = new SqlConnection(connStr);
        SqlCommand cmd = new SqlCommand("istenilenarac_ekle", conn);
        cmd.CommandType = CommandType.StoredProcedure;
        cmd.Parameters.AddWithValue("@kullanici_id",Convert.ToInt32(myCookies["k_id"].ToString()));
        cmd.Parameters.AddWithValue("@marka_id",Convert.ToInt32(dpmarka.SelectedValue));
        cmd.Parameters.AddWithValue("@model_id", Convert.ToInt32(dpmodel.SelectedValue));
        cmd.Parameters.AddWithValue("@model_yılı", dpmodelyil.SelectedValue.ToString());
        cmd.Parameters.AddWithValue("@fiyat",txtfiyat.Text);
        cmd.Parameters.AddWithValue("@musteri_ad", txtad.Text);
        cmd.Parameters.AddWithValue("@telefon", txttel.Text);
        cmd.Parameters.AddWithValue("@aciklama", txtaciklama.Text);

    
            conn.Open();
            cmd.ExecuteNonQuery();
            conn.Close();


            Response.Write("<script>alert('Aracınız Eklendi..')</script>");
            Response.Redirect("istenilenarac.aspx"); 
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