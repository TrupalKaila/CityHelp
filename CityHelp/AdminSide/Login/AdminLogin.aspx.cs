using CHBL;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Xml.Linq;

namespace CityHelp.AdminSide.Login
{
    public partial class AdminLogin : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void signin_Click(object sender, EventArgs e)
        {
            AdminBL objAdminBL = new AdminBL();

            if (objAdminBL.IsUserExist(your_name.Text, your_pass.Text))
            {
                Response.Redirect("~/AdminSide/PlacesList.aspx");
            }
            else
            {
                lblMessage.Text = "Account doesn't exist. Please SignUp to login";
            }
        }
    }
}