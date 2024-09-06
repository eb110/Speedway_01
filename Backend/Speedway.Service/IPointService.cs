using Microsoft.AspNetCore.Mvc;
using SpeedwayBackend.Models;

namespace Speedway.Service
{
    public interface IPointService
    {
        JsonResult GetAllPoints(string sqlDataSource);
        JsonResult PostNewPointVersion(string sqlDataSource, Point point);
        JsonResult DeletePoint(string sqlDataSource, int id);
        JsonResult UpdatePoint(string sqlDataSource, Point point);
    }
}
