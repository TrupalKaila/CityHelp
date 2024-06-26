using CHBL;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace CityHelp.AdminSide
{
    public partial class PlacesList : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack)
            {
                FillPlacesGridView();
            }
        }

        private void FillPlacesGridView()
        {
            PlacesBL objPlacesBL = new PlacesBL();
            DataTable dtPlaces = objPlacesBL.GetPlacesDataTable();
            if (dtPlaces != null && dtPlaces.Rows.Count > 0)
            {
                gvPlaces.DataSource = dtPlaces;
                gvPlaces.DataBind();
                lblMessage.Text = "No of records" + dtPlaces.Rows.Count.ToString();
            }
            else
            {
                lblMessage.Text = "Data Is Not Available";
            }
        }

        protected void gvPlaces_RowCommand(object sender, GridViewCommandEventArgs e)
        {
            if (e.CommandName == "DeleteRecord" && e.CommandArgument != null)
            {
                PlacesBL objPlacesBL = new PlacesBL();
                objPlacesBL.DeletePlaces(Convert.ToInt32(e.CommandArgument));
                FillPlacesGridView();
            }
        }

        protected void btnAdd_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/AdminSide/Places.aspx");
        }
    }
}