using System;
using System.Data.SqlClient;
using System.Data;
using System.Configuration;
using CHOM;
using Dapper;

namespace CHDL
{
    public class AdminDL
    {
        string _conString = ConfigurationManager.ConnectionStrings["Main"].ConnectionString;

        public bool IsUserExist(string name, string password)
        {
            bool isUserExists = false;

            using (var connection = new SqlConnection(_conString))
            {
                connection.Open();

                SqlCommand command = new SqlCommand(
                    "SELECT COUNT(*) FROM Admin WHERE Name = @Name AND Password = @Password", connection);
                command.Parameters.AddWithValue("@Name", name);
                command.Parameters.AddWithValue("@Password", password);

                string a = "select count(*) from Admin where name = ' " + name + "' AND Password = '" + password + "'";

                int count = (int)command.ExecuteScalar();
                if (count > 0)
                {
                    isUserExists = true;
                }

                return isUserExists;
            }
        }

        public bool InsertAdmin(AdminOM objAdmin)
        {
            using (var connection = new SqlConnection(_conString))
            {
                try
                {
                    connection.Open();

                    SqlCommand getMaxIdCommand = new SqlCommand("SELECT MAX(Id) FROM Admin", connection);
                    object result = getMaxIdCommand.ExecuteScalar();

                    int maxId = result != DBNull.Value ? Convert.ToInt32(result) : 0;
                    int newId = maxId + 1;
                    string insertQuery = @"INSERT INTO Admin (Id, Name, Password, EmailId) 
                                   VALUES (@Id, @Name, @Password, @EmailId)";

                    SqlCommand insertCommand = new SqlCommand(insertQuery, connection);
                    insertCommand.Parameters.AddWithValue("@Id", newId);
                    insertCommand.Parameters.AddWithValue("@Name", objAdmin.Name);
                    insertCommand.Parameters.AddWithValue("@Password", objAdmin.Password);
                    insertCommand.Parameters.AddWithValue("@EmailId", objAdmin.EmailId);

                    int rowsAffected = insertCommand.ExecuteNonQuery();

                    if (rowsAffected > 0)
                    {
                        return true; // Insertion successful
                    }
                    else
                    {
                        return false; // Insertion failed
                    }
                }
                catch (Exception ex)
                {
                    Console.WriteLine("An error occurred: " + ex.Message);
                    return false;
                }
            }
        }

        public bool IsNameExists(string name)
        {
            using (var connection = new SqlConnection(_conString))
            {
                try
                {
                    connection.Open();

                    SqlCommand checkNameCommand = new SqlCommand("SELECT COUNT(*) FROM Admin WHERE Name = @Name", connection);
                    checkNameCommand.Parameters.AddWithValue("@Name", name);
                    int count = (int)checkNameCommand.ExecuteScalar();

                    if (count > 0)
                    {
                        return true;
                    }
                    else
                    {
                        return false;
                    }
                }
                catch (Exception ex)
                {
                    Console.WriteLine("An error occurred: " + ex.Message);
                    return true;
                }
            }
        }

    }
}
