using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.Configuration;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace login
{
    public partial class login : System.Web.UI.Page
    {
        String cn = WebConfigurationManager.ConnectionStrings["log_ConnectionString"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void sbt_Click(object sender, EventArgs e)
        {
            SqlConnection conn = new SqlConnection(cn);
            string query = "select UserName, Password from log where (UserName = '" + txtuser.Text + "' and Password = '" + txtpass.Text + "')";
            conn.Open();
            SqlCommand cmd = new SqlCommand();
            cmd.CommandText = query;
            cmd.Connection = conn;
            sSqlDataReader dr = cmd.ExecuteReader();
            if(dr.Read())
            {
                Session["id"] = txtuser.Text;
                Response.Redirect("home.aspx");
            }
            else
            {
                Response.Write("Data Not Found");
            }

        }
    }
}