using CHBL;
using CHOM;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;
using System.Xml.Linq;

namespace CityHelp.AdminSide.Login
{
    public partial class AdminSignUp : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
            }
        }

        protected void SignUp_Click(object sender, EventArgs e)
        {
            AdminOM objAdminOM = new AdminOM();
            AdminBL objAdminBL = new AdminBL();

            if (objAdminBL.IsNameExists(name.Text))
            {
                lblMessage.Text = "Name already exists.";
                return;
            }

            objAdminOM.Name = name.Text;
            objAdminOM.Password = pass.Text;
            objAdminOM.EmailId = email.Text;

            if (objAdminBL.InsertAdmin(objAdminOM))
            {
                lblMessage.Text = "Admin signed up successfully.";
            }
            else
            {
                lblMessage.Text = "Not able to signup.";
            }

            ClearControls();
        }

        public void ClearControls()
        {
            name.Text = string.Empty;
            pass.Text = string.Empty;
            email.Text = string.Empty;
        }
    }
}