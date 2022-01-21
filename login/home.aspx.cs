using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace login
{
    public partial class home : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if(Session["id"]==null)
            {
                Response.Redirect("login.aspx");
            }
            Response.Write(Session["id"]);
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Session.RemoveAll();
        }
    }
}