using Microsoft.AspNetCore.Mvc;
using Speedway.Service;
using SpeedwayBackend.Models;

namespace SpeedwayBackend.Controllers
{
    [Route("api/[controller]")]
    [ApiController]
    public class RunController : ControllerBase
    {
        private readonly IConfiguration _configuration;
        private readonly IRunService _runService;
        public RunController(IConfiguration configuration, IRunService runService)
        {
            _configuration = configuration;
            _runService = runService;
        }

        [HttpGet]
        public JsonResult GetAllRuns()
        {
            string sqlDataSource = _configuration.GetConnectionString("SpeedwayDbConnection")!;
            var result = _runService.GetAllRuns(sqlDataSource);
            return result;
        }

        [HttpPost] 
        public JsonResult PostRunVersion(Run run)
        {
            string sqlDataSource = _configuration.GetConnectionString("SpeedwayDbConnection")!;
            var result = _runService.PostNewVersion(sqlDataSource, run);
            return result;
        }

        [HttpDelete("{id}")]
        public JsonResult DeleteRun(int id)
        {
            string sqlDataSource = _configuration.GetConnectionString("SpeedwayDbConnection")!;
            var result = _runService.DeleteRun(sqlDataSource, id);
            return result;
        }

        [HttpPut]
        public JsonResult UpdateRun(Run run)
        {
            string sqlDataSource = _configuration.GetConnectionString("SpeedwayDbConnection")!;
            var result = _runService.UpdateRun(sqlDataSource, run);
            return result;
        }
    }
}
