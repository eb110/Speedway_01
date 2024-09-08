using Microsoft.AspNetCore.Mvc;
using SpeedwayBackend.Models;

namespace Speedway.Service
{
    public interface IRunService
    {
        JsonResult GetAllRuns(string sqlDataSource);
        JsonResult PostNewVersion(string sqlDataSource, Run run);
        JsonResult DeleteRun(string sqlDataSource, int id);
        JsonResult UpdateRun(string sqlDataSource,Run run);
    }
}
