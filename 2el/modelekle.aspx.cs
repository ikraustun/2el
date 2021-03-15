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
public partial class modelekle : System.Web.UI.Page
{
    string connStr = WebConfigurationManager.ConnectionStrings["mydb"].ConnectionString;

    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btnekle_Click(object sender, EventArgs e)
    {
        SqlConnection con = new SqlConnection(connStr);
        SqlCommand cmd = new SqlCommand("modelekle", con);
        cmd.CommandType = CommandType.StoredProcedure;

        cmd.Parameters.AddWithValue("@marka",Convert.ToInt32(dpmarka.SelectedValue));
        cmd.Parameters.AddWithValue("@model", txtmodel.Text);
        SqlParameter parm = new SqlParameter("@return", SqlDbType.Int);
        parm.Direction = ParameterDirection.ReturnValue;

        cmd.Parameters.Add(parm);
        con.Open();
        cmd.ExecuteNonQuery();
        con.Close();
        int id = Convert.ToInt32(parm.Value);
        if (id == 0)
        {
            Response.Write("<script>alert('Eklediğiniz model sistemde mevcut..')</script>");
        }
        else if (id ==2)
        {
            Response.Write("<script>alert('Model Eklendi..')</script>");
            Response.Redirect("~/aracekle.aspx");
        }
    
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/aracekle.aspx");
    }
}