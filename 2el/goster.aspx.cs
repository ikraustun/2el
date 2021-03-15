using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
public partial class goster : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
      
        if (((CheckBox)FormView1.FindControl("c1CheckBox")).Checked)
        {
            ((CheckBox)FormView1.FindControl("c1CheckBox")).BackColor = System.Drawing.Color.Blue;
        }
        if (((CheckBox)FormView1.FindControl("c2CheckBox")).Checked)
        {
            ((CheckBox)FormView1.FindControl("c2CheckBox")).BackColor = System.Drawing.Color.Pink;
        }
        if (((CheckBox)FormView1.FindControl("c3CheckBox")).Checked)
        {
            ((CheckBox)FormView1.FindControl("c3CheckBox")).BackColor = System.Drawing.Color.Blue;
        }
        if (((CheckBox)FormView1.FindControl("c4CheckBox")).Checked)
        {
            ((CheckBox)FormView1.FindControl("c4CheckBox")).BackColor = System.Drawing.Color.Pink;
        }
        if (((CheckBox)FormView1.FindControl("c5CheckBox")).Checked)
        {
            ((CheckBox)FormView1.FindControl("c5CheckBox")).BackColor = System.Drawing.Color.Blue;
        }
        if (((CheckBox)FormView1.FindControl("c6CheckBox")).Checked)
        {
            ((CheckBox)FormView1.FindControl("c6CheckBox")).BackColor = System.Drawing.Color.Pink;
        }
        if (((CheckBox)FormView1.FindControl("c7CheckBox")).Checked)
        {
            ((CheckBox)FormView1.FindControl("c7CheckBox")).BackColor = System.Drawing.Color.Blue;
        }
        if (((CheckBox)FormView1.FindControl("c8CheckBox")).Checked)
        {
            ((CheckBox)FormView1.FindControl("c8CheckBox")).BackColor = System.Drawing.Color.Pink;
        }
       
    }
}