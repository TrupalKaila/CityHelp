using CHBL;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace CityHelp.ClientSide
{
    public partial class Places : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack)
            {
                if (Request.QueryString["Category"] != null)
                {
                    LoadGrid(Convert.ToString(Request.QueryString["Category"]));
                }
            }
        }

        private void LoadGrid(string category)
        {
            PlacesBL objPlacesBL = new PlacesBL();

            lblCategory.Text = liCategory.Text = category;
            rptPlaces.DataSource = objPlacesBL.GetPlacesDataTableByCategory(category);
            rptPlaces.DataBind();
        }

        protected void rptPlaces_ItemCommand(object source, RepeaterCommandEventArgs e)
        {

        }
    }
}