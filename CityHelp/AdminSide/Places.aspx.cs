using CHBL;
using CHOM;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace CityHelp.AdminSide
{
    public partial class Places : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack)
            {
                if (Request.QueryString["Id"] != null)
                {
                    LoadControls(Convert.ToInt32(Request.QueryString["Id"]));
                    lblPageHeader.Text = "Edit Places";
                }
                else
                {
                    lblPageHeader.Text = "Add Places";
                }
            }
        }

        private void LoadControls(int CountryID)
        {
            PlacesOM objPlacesOM = new PlacesOM();
            PlacesBL objPlacesBL = new PlacesBL();

            objPlacesOM = objPlacesBL.GetPlacesDetails(CountryID);

            txtName.Text = objPlacesOM.Name;
            txtRating.Text = objPlacesOM.Rating.ToString();
            txtAddress.Text = objPlacesOM.Address;
            txtContactNo.Text = objPlacesOM.ContactNo;
            ddlCategory.SelectedValue = objPlacesOM.Category;
            imgURL.ImageUrl = objPlacesOM.ImageURL;
            hdnURL.Value = objPlacesOM.ImageURL;
        }

        protected void btnSave_Click(object sender, EventArgs e)
        {
            String strError = String.Empty;

            if (txtName.Text.Length <= 0)
            {
                strError = "Enter Name." + Environment.NewLine;
            }
            if (txtAddress.Text.Length <= 0)
            {
                strError += "Enter Address." + Environment.NewLine;
            }
            if (imgURL.ImageUrl == null && imgURL.ImageUrl.Length <= 0)
            {
                strError += "Add Image." + Environment.NewLine;
            }
            if (strError.Trim() != String.Empty)
            {
                lblMessage.Text = "Kindly Correct Following Error" + Environment.NewLine + strError; ;
            }
            PlacesOM objPlacesOM = new PlacesOM();
            PlacesBL objPlacesBL = new PlacesBL();


            objPlacesOM.Name = txtName.Text;

            decimal rating;
            if (Decimal.TryParse(txtRating.Text, out rating))
            {
                objPlacesOM.Rating = rating;
            }

            objPlacesOM.Address = txtAddress.Text;
            objPlacesOM.ContactNo = txtContactNo.Text;
            objPlacesOM.Category = ddlCategory.SelectedValue;

            String oldImage = Request.MapPath(hdnURL.Value.ToString());
            if (System.IO.File.Exists(oldImage))
            {
                System.IO.File.Delete(oldImage);
            }


            if (fuImageURL.HasFile)
            {
                String fileExt = System.IO.Path.GetExtension(fuImageURL.FileName);
                String name = fuImageURL.FileName;
                String _filename = DateTime.Now.ToString("ddMMyyyyHHmmss") + name;
                String strFilePath = "~/Images/" + name;
                fuImageURL.PostedFile.SaveAs(Server.MapPath(strFilePath));
                objPlacesOM.ImageURL = strFilePath;
            }


            if (Request.QueryString["Id"] == null)
            {
                objPlacesBL.InsertPlaces(objPlacesOM);
                lblMessage.Text = "Data Inserted Successfully";
            }
            else
            {
                objPlacesOM.Id = Convert.ToInt32(Request.QueryString["Id"]);
                objPlacesBL.UpdatePlaces(objPlacesOM);
                Response.Redirect("~/AdminSide/PlacesList.aspx");
            }
        }

    }
}