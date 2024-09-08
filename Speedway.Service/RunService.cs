using Microsoft.AspNetCore.Mvc;
using SpeedwayBackend.Models;
using System.Data;
using System.Data.SqlClient;

namespace Speedway.Service
{
    public class RunService : IRunService
    {
        public JsonResult DeleteRun(string sqlDataSource,int id)
        {
            string query = @"delete from dbo.Runs where Id = @Id";
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
            return new JsonResult("Run deleted");
        }

        public JsonResult GetAllRuns(string sqlDataSource)
        {
            string query = @"select Id, Value from dbo.Runs";
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

        public JsonResult PostNewVersion(string sqlDataSource,Run run)
        {
            string query = @"insert into dbo.Runs values (@Value)";
            DataTable table = new DataTable();
            SqlDataReader myReader;
            using (SqlConnection myCon = new SqlConnection(sqlDataSource))
            {
                myCon.Open();
                using (SqlCommand myCommand = new SqlCommand(query, myCon))
                {
                    myCommand.Parameters.AddWithValue("@Value", run.Value);
                    myReader = myCommand.ExecuteReader();
                    table.Load(myReader);
                    myReader.Close();
                    myCon.Close();
                }
            }
            return new JsonResult("Run version Added");
        }

        public JsonResult UpdateRun(string sqlDataSource,Run run)
        {
            string query = @"update dbo.Runs set Value = @Value where Id = @Id";
            DataTable table = new DataTable();
            SqlDataReader myReader;
            using (SqlConnection myCon = new SqlConnection(sqlDataSource))
            {
                myCon.Open();
                using (SqlCommand myCommand = new SqlCommand(query, myCon))
                {
                    myCommand.Parameters.AddWithValue("@Id", run.Id);
                    myCommand.Parameters.AddWithValue("@Value", run.Value);
                    myReader = myCommand.ExecuteReader();
                    table.Load(myReader);
                    myReader.Close();
                    myCon.Close();
                }
            }
            return new JsonResult("Run updated");
        }
    }
}
