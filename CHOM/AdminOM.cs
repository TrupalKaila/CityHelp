using System;
using System.Data.Linq.Mapping;

namespace CHOM
{
    [Serializable]
    [Table(Name = "dbo.Admin")]
    public class AdminOM
    {
        private int _Id;
        private string _Name;
        private string _Password;
        private string _EmailId;

        [Column(Storage = "_Id", DbType = "INT NOT NULL", CanBeNull = false, IsPrimaryKey = true)]
        public int Id
        {
            get
            {
                return this._Id;
            }
            set
            {
                if ((this._Id != value))
                {
                    this._Id = value;
                }
            }
        }

        [Column(Storage = "_Name", DbType = "VarChar(30) NOT NULL", CanBeNull = false)]
        public string Name
        {
            get
            {
                return this._Name;
            }
            set
            {
                if ((this._Name != value))
                {
                    this._Name = value;
                }
            }
        }

        [Column(Storage = "_Password", DbType = "VarChar(15) NOT NULL", CanBeNull = false)]
        public string Password
        {
            get
            {
                return this._Password;
            }
            set
            {
                if ((this._Password != value))
                {
                    this._Password = value;
                }
            }
        }

        [Column(Storage = "_EmailId", DbType = "VarChar(50) NOT NULL", CanBeNull = false)]
        public string EmailId   
        {
            get
            {
                return this._EmailId;
            }
            set
            {
                if ((this._EmailId != value))
                {
                    this._EmailId = value;
                }
            }
        }
    }
}
