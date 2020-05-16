using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;

namespace RegistrationSQLServer.DBLayer
{
    public class DBUtilities
    {
        private static SqlConnection GetSqlConnection()
        {
            string connectionString = ConfigurationManager.ConnectionStrings["RegistrationConnectionString"].ToString();

            return new SqlConnection(connectionString);
        }

        public static int InsertUserInformation(BusinessLayer.UserInformation ui)
        {
            int result;

            using (SqlConnection cnn = GetSqlConnection())
            {
                String sql = $"Inser into UserInformation(FirstName, LastName, Address, City, Province, PostalCode, Country) values ('{ui.FirstName}','{ui.LastName}','{ui.Address}','{ui.City}','{ui.Province}','{ui.PostalCode}','{ui.Country}')";
                using(SqlCommand command = new SqlCommand(sql, cnn))
                {
                    using(SqlDataAdapter adapter = new SqlDataAdapter())
                    {
                        cnn.Open();

                        adapter.InsertCommand = new SqlCommand(sql, cnn);

                        result = adapter.InsertCommand.ExecuteNonQuery();
                    }
                }            
            }
            
            return result;

        }
    }
}