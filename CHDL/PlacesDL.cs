using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Data;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using CHOM;
using Dapper;

namespace CHDL
{
    public class PlacesDL
    {
        string _conString = ConfigurationManager.ConnectionStrings["Main"].ConnectionString;

        public DataTable GetPlacesDataTable()
        {
            SqlConnection con = new SqlConnection(_conString);
            DataTable dt = new DataTable();

            try
            {
                SqlCommand cmd = new SqlCommand();
                cmd.CommandText = @"SELECT Id, Name, Rating, Address, ImageURL, ContactNo, 
                                    Category FROM Places";
                cmd.Connection = con;
                con.Open();
                SqlDataReader sqlReader = cmd.ExecuteReader();
                dt.Load(sqlReader);
                con.Close();

            }
            catch
            {
                throw;
            }
            finally
            {
                con.Close();
            }
            return dt;
        }

        public DataTable GetPlacesDataTableByCategory(string category)
        {
            SqlConnection con = new SqlConnection(_conString);
            DataTable dt = new DataTable();

            try
            {
                SqlCommand cmd = new SqlCommand();
                cmd.CommandText = @"SELECT Id, Name, Rating, Address, ImageURL, ContactNo, 
                                    Category FROM Places WHERE Category = @Category";
                cmd.Parameters.Add("@Category", SqlDbType.VarChar).Value = category;
                cmd.Connection = con;
                con.Open();
                SqlDataReader sqlReader = cmd.ExecuteReader();
                dt.Load(sqlReader);
                con.Close();

            }
            catch
            {
                throw;
            }
            finally
            {
                con.Close();
            }
            return dt;

        }
        public PlacesOM GetPlacesDetails(int Id)
        {
            using (var connection = new SqlConnection(_conString))
            {
                connection.Open();

                var country = connection.QueryFirstOrDefault<PlacesOM>(
                    "SELECT Id, Name, Rating, Address, ImageURL, ContactNo, Category FROM Places WHERE Id = @Id",
                    new { Id = Id });

                return country;
            }
        }

        public void DeletePlaces(int Id)
        {
            try
            {
                using (SqlConnection connection = new SqlConnection(_conString))
                {
                    connection.Open();

                    using (SqlTransaction transaction = connection.BeginTransaction())
                    {
                        using (SqlCommand command = connection.CreateCommand())
                        {
                            command.Transaction = transaction;
                            command.CommandText = "DELETE FROM Places WHERE Id=@Id";
                            command.Parameters.Add("@Id", SqlDbType.Int).Value = Id;
                            command.ExecuteNonQuery();
                        }

                        transaction.Commit();
                    }
                }
            }
            catch (Exception ex)
            {
                throw new Exception("DeletePlaces() failed: " + ex.Message);
            }
        }

        public void InsertPlaces(PlacesOM objPlacesOM)
        {
            try
            {
                using (SqlConnection connection = new SqlConnection(_conString))
                {
                    connection.Open();

                    SqlCommand getMaxIdCommand = new SqlCommand("SELECT MAX(Id) FROM Places", connection);
                    object result = getMaxIdCommand.ExecuteScalar();

                    int maxId = result != DBNull.Value ? Convert.ToInt32(result) : 0;
                    int newId = maxId + 1;

                    using (SqlTransaction transaction = connection.BeginTransaction())
                    {
                        using (SqlCommand command = connection.CreateCommand())
                        {
                            command.Transaction = transaction;
                            command.CommandText = "INSERT INTO Places VALUES(@Id, @Name, @Rating, @Address, @ImageURL, @ContactNo, @Category)";
                            command.Parameters.Add("@Id", SqlDbType.Int).Value = newId;
                            command.Parameters.Add("@Name", SqlDbType.VarChar).Value = objPlacesOM.Name;
                            command.Parameters.Add("@Rating", SqlDbType.Decimal).Value = objPlacesOM.Rating;
                            command.Parameters.Add("@Address", SqlDbType.VarChar).Value = objPlacesOM.Address;
                            command.Parameters.Add("@ImageURL", SqlDbType.VarChar).Value = objPlacesOM.ImageURL;
                            command.Parameters.Add("@ContactNo", SqlDbType.VarChar).Value = objPlacesOM.ContactNo;
                            command.Parameters.Add("@Category", SqlDbType.VarChar).Value = objPlacesOM.Category;
                            command.ExecuteNonQuery();
                        }

                        transaction.Commit();
                    }
                }
            }
            catch (Exception ex)
            {
                throw new Exception("InsertPlaces() failed: " + ex.Message);
            }
        }

        public void UpdatePlaces(PlacesOM objPlacesOM)
        {
            try
            {
                using (SqlConnection connection = new SqlConnection(_conString))
                {
                    connection.Open();

                    using (SqlTransaction transaction = connection.BeginTransaction())
                    {
                        using (SqlCommand command = connection.CreateCommand())
                        {
                            command.Transaction = transaction;
                            command.CommandText = @"UPDATE Places 
                                            SET Name = @Name, 
                                                Rating = @Rating, 
                                                Address = @Address, 
                                                ImageURL = @ImageURL, 
                                                ContactNo = @ContactNo, 
                                                Category = @Category 
                                            WHERE Id = @Id";
                            command.Parameters.Add("@Id", SqlDbType.Int).Value = objPlacesOM.Id;
                            command.Parameters.Add("@Name", SqlDbType.VarChar).Value = objPlacesOM.Name;
                            command.Parameters.Add("@Rating", SqlDbType.Decimal).Value = objPlacesOM.Rating;
                            command.Parameters.Add("@Address", SqlDbType.VarChar).Value = objPlacesOM.Address;
                            command.Parameters.Add("@ImageURL", SqlDbType.VarChar).Value = objPlacesOM.ImageURL;
                            command.Parameters.Add("@ContactNo", SqlDbType.VarChar).Value = objPlacesOM.ContactNo;
                            command.Parameters.Add("@Category", SqlDbType.VarChar).Value = objPlacesOM.Category;
                            command.ExecuteNonQuery();
                        }

                        transaction.Commit();
                    }
                }
            }
            catch (Exception ex)
            {
                throw new Exception("UpdatePlaces() failed: " + ex.Message);
            }
        }
    }
}
