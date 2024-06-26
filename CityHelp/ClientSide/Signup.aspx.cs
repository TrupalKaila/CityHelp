using System;
using System.Xml.Linq;

namespace CityHelp.ClientSide
{
    public partial class Signup : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Page.IsPostBack)
            {
                string name = txtName.Text.Trim();
                string email = txtEmail.Text.Trim();
                string password = txtPassword.Text.Trim();
                string gender = ddlGender.SelectedValue;
                string contact = txtContact.Text.Trim();

                // Perform server-side validation
                if (string.IsNullOrEmpty(name) || string.IsNullOrEmpty(email) || string.IsNullOrEmpty(password) || string.IsNullOrEmpty(gender) || string.IsNullOrEmpty(contact))
                {
                    // Display error message or handle validation logic
                    // For example:
                    // lblErrorMessage.Text = "Please fill in all fields.";
                    // lblErrorMessage.Visible = true;
                }
                else
                {
                    // Form data is valid, proceed with signup process
                    // For example:
                    // SignUp(name, email, password, gender, contact);
                }
            }
        }
    }
}
