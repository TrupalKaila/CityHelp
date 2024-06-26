using CHDL;
using CHOM;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace CHBL
{
    public class PlacesBL
    {
        PlacesDL _PlacesDL = new PlacesDL();

        public PlacesOM GetPlacesDetails(int Id)
        {
            return _PlacesDL.GetPlacesDetails(Id);
        }

        public DataTable GetPlacesDataTable()
        {
            return _PlacesDL.GetPlacesDataTable();
        }

        public DataTable GetPlacesDataTableByCategory(string category)
        {
            return _PlacesDL.GetPlacesDataTableByCategory(category);
        }

        public void InsertPlaces(PlacesOM objPlaces)
        {
            _PlacesDL.InsertPlaces(objPlaces);
        }

        public void UpdatePlaces(PlacesOM objPlaces)
        {
            _PlacesDL.UpdatePlaces(objPlaces);
        }

        public void DeletePlaces(int Id)
        {
            _PlacesDL.DeletePlaces(Id);
        }
    }
}
