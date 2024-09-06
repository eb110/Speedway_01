using Microsoft.AspNetCore.Http;
using Microsoft.AspNetCore.Mvc;
using Newtonsoft.Json;
using Speedway.Service;
using SpeedwayBackend.Models;
using System.Data;
using System.Data.SqlClient;

namespace SpeedwayBackend.Controllers
{
    [Route("api/[controller]")]
    [ApiController]
    public class PointController : ControllerBase
    {
        private readonly IConfiguration _configuration;
        private readonly IPointService _pointService;
        public PointController(IConfiguration configuration, IPointService pointService)
        {
            _configuration = configuration;
            _pointService = pointService;
        }

        [HttpGet]
        public JsonResult GetAllPoints() 
        {
            string sqlDataSource = _configuration.GetConnectionString("SpeedwayDbConnection")!;
            var result = _pointService.GetAllPoints(sqlDataSource);
            return result;
        }

        [HttpPost]
        public JsonResult PostPointVersion(Point point)
        {
            string sqlDataSource = _configuration.GetConnectionString("SpeedwayDbConnection")!;
            var result = _pointService.PostNewPointVersion(sqlDataSource, point);
            return result;
        }

        [HttpDelete("{id}")]
        public JsonResult DeletePointVersionById(int id)
        {
            string sqlDataSource = _configuration.GetConnectionString("SpeedwayDbConnection")!;
            var result = _pointService.DeletePoint(sqlDataSource, id);
            return result;
        }

        [HttpPut]
        public JsonResult UpdatePointVersion(Point point)
        {
            string sqlDataSource = _configuration.GetConnectionString("SpeedwayDbConnection")!;
            var result = _pointService.UpdatePoint(sqlDataSource, point);
            return result;
        }
    }
}
