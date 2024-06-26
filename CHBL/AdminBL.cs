using CHDL;
using CHOM;

namespace CHBL
{
    public class AdminBL
    {
        AdminDL _AdminDL = new AdminDL();

        public bool IsUserExist(string name, string password)
        {
            return _AdminDL.IsUserExist(name, password);
        }

        public bool InsertAdmin(AdminOM objAdmin)
        {
            return _AdminDL.InsertAdmin(objAdmin);
        }

        public bool IsNameExists(string name)
        {
            return _AdminDL.IsNameExists(name);
        }
    }
}
