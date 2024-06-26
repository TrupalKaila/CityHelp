using CHBL;
using CHOM;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace CityHelp.ClientSide
{
    public partial class PlacesMain : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack)
            {
                if (Request.QueryString["Id"] != null)
                {
                    LoadData(Convert.ToInt32(Request.QueryString["Id"]));
                }
            }
        }

        private void LoadData(int id)
        {
            PlacesBL objPlacesBL = new PlacesBL();
            PlacesOM objPlacesOM = objPlacesBL.GetPlacesDetails(id);

            lblName.Text = objPlacesOM.Name;
            lblRating.Text = objPlacesOM.Rating.ToString();
            lblAddress.Text = objPlacesOM.Address;
            lblContactNo.Text = objPlacesOM.ContactNo;
            imgImageURL.ImageUrl = objPlacesOM.ImageURL;
            lblCategory.Text = liCategory.Text = objPlacesOM.Category;
        }
    }
}