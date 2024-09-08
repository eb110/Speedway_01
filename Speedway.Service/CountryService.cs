using Microsoft.AspNetCore.Mvc;
using Microsoft.Extensions.Configuration;
using SpeedwayBackend.Models;
using System.Data.SqlClient;
using System.Data;
using Microsoft.AspNetCore.Http;

namespace Speedway.Service
{
    public class CountryService : ICountryService
    {
        public JsonResult AddCountry(string sqlDataSource, Country country)
        {
            string query = @"insert into dbo.Countries values (@Name, @FlagFileName)";
            DataTable table = new DataTable();
            SqlDataReader myReader;
            using (SqlConnection myCon = new SqlConnection(sqlDataSource))
            {
                myCon.Open();
                using (SqlCommand myCommand = new SqlCommand(query, myCon))
                {
                    myCommand.Parameters.AddWithValue("@Name", country.Name);
                    myCommand.Parameters.AddWithValue("@FlagFileName", country.FlagFileName);
                    myReader = myCommand.ExecuteReader();
                    table.Load(myReader);
                    myReader.Close();
                    myCon.Close();
                }
            }
            return new JsonResult("Country Added");
        }

        public JsonResult DeleteCountry(string sqlDataSource, int id)
        {
            string query = @"delete from dbo.Countries where Id = @Id";
            DataTable table = new DataTable();
            SqlDataReader myReader;
            using (SqlConnection myCon = new SqlConnection(sqlDataSource))
            {
                myCon.Open();
                using (SqlCommand myCommand = new SqlCommand(query, myCon))
                {
                    myCommand.Parameters.AddWithValue("@Id", id);
                    myReader = myCommand.ExecuteReader();
                    table.Load(myReader);
                    myReader.Close();
                    myCon.Close();
                }
            }
            return new JsonResult("Country deleted");
        }

        public JsonResult GetAllCountries(string sqlDataSource)
        {
            string query = @"select Id, Name, FlagFileName from dbo.Countries";
            DataTable table = new DataTable();
            SqlDataReader myReader;
            using (SqlConnection myCon = new SqlConnection(sqlDataSource))
            {
                myCon.Open();
                using (SqlCommand myCommand = new SqlCommand(query, myCon))
                {
                    myReader = myCommand.ExecuteReader();
                    table.Load(myReader);
                    myReader.Close();
                    myCon.Close();
                }
            }
            return new JsonResult(table);
        }

        public JsonResult UpdateCountry(string sqlDataSource, Country country)
        {
            string query = @"update dbo.Countries set Name = @Name, FlagFileName = @FlagFileName where Id = @Id";
            DataTable table = new DataTable();
            SqlDataReader myReader;
            using (SqlConnection myCon = new SqlConnection(sqlDataSource))
            {
                myCon.Open();
                using (SqlCommand myCommand = new SqlCommand(query, myCon))
                {
                    myCommand.Parameters.AddWithValue("@Id", country.Id);
                    myCommand.Parameters.AddWithValue("@Name", country.Name);
                    myCommand.Parameters.AddWithValue("@FlagFileName", country.FlagFileName);
                    myReader = myCommand.ExecuteReader();
                    table.Load(myReader);
                    myReader.Close();
                    myCon.Close();
                }
            }
            return new JsonResult("country updated");
        }

        public JsonResult SaveFlag(string path, IFormFile file)
        {
            try
            {
                using (var stream = new FileStream(path, FileMode.Create))
                {
                    file.CopyTo(stream);
                }
                return new JsonResult(file.FileName);
            }
            catch (Exception ex)
            {
                return new JsonResult("nieznany.png");
            }
        }
    }
}
