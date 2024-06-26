using System;
using System.Collections.Generic;
using System.Data.Linq.Mapping;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace CHOM
{
    [Serializable]
    [Table(Name = "dbo.Places")]
    public class PlacesOM
    {
        private int _Id;
        private string _Name;
        private decimal _Rating;
        private string _Address;
        private string _ImageURL;
        private string _ContactNo;
        private string _Category;

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

        [Column(Storage = "_Name", DbType = "VarChar(255) NOT NULL", CanBeNull = false)]
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

        [Column(Storage = "_Rating", DbType = "Decimal(3,1) NOT NULL", CanBeNull = false)]
        public decimal Rating
        {
            get
            {
                return this._Rating;
            }
            set
            {
                if ((this._Rating != value))
                {
                    this._Rating = value;
                }
            }
        }

        [Column(Storage = "_Address", DbType = "VarChar(255) NOT NULL", CanBeNull = false)]
        public string Address
        {
            get
            {
                return this._Address;
            }
            set
            {
                if ((this._Address != value))
                {
                    this._Address = value;
                }
            }
        }

        [Column(Storage = "_ImageURL", DbType = "VarChar(255) NOT NULL", CanBeNull = false)]
        public string ImageURL
        {
            get
            {
                return this._ImageURL;
            }
            set
            {
                if ((this._ImageURL != value))
                {
                    this._ImageURL = value;
                }
            }
        }

        [Column(Storage = "_ContactNo", DbType = "VarChar(20) NOT NULL", CanBeNull = false)]
        public string ContactNo
        {
            get
            {
                return this._ContactNo;
            }
            set
            {
                if ((this._ContactNo != value))
                {
                    this._ContactNo = value;
                }
            }
        }

        [Column(Storage = "_Category", DbType = "VarChar(50) NOT NULL", CanBeNull = false)]
        public string Category
        {
            get
            {
                return this._Category;
            }
            set
            {
                if ((this._Category != value))
                {
                    this._Category = value;
                }
            }
        }

    }
}
