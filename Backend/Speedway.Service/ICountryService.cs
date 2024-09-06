using Microsoft.AspNetCore.Http;
using Microsoft.AspNetCore.Mvc;
using SpeedwayBackend.Models;

namespace Speedway.Service
{
    public interface ICountryService
    {
        JsonResult GetAllCountries(string sqlDataSource);
        JsonResult AddCountry(string sqlDataSource, Country country);
        JsonResult DeleteCountry(string sqlDataSource, int id);
        JsonResult UpdateCountry(string sqlDataSource, Country country);
        JsonResult SaveFlag(string path, IFormFile file);
    }
}
