using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace CityHelp.AdminSide
{
    public partial class Site1 : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            // Add any code that needs to run when the page loads here
        }

        protected void LogoutButton_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/AdminSide/Login/AdminLogin.aspx");
        }
    }
}