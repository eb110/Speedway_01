using Microsoft.AspNetCore.Http;
using Microsoft.AspNetCore.Mvc;
using SpeedwayBackend.Models;
using System.Data.SqlClient;
using System.Data;
using System.Diagnostics.Metrics;
using System.Text;
using Speedway.Service;

namespace SpeedwayBackend.Controllers
{
    [Route("api/[controller]")]
    [ApiController]
    public class CountryController : ControllerBase
    {
        private readonly IConfiguration _configuration;
        //file service
        private readonly IWebHostEnvironment _env;

        private readonly ICountryService _countryService;
        public CountryController(IConfiguration configuration, IWebHostEnvironment env, ICountryService countryService)
        {
            _configuration = configuration;
            _env = env;
            _countryService = countryService;
        }

        [HttpGet]
        public JsonResult GetAllCountries()
        {
            string sqlDataSource = _configuration.GetConnectionString("SpeedwayDbConnection")!;
            var result = _countryService.GetAllCountries(sqlDataSource);
            return result;
        }

        [HttpPost]
        public JsonResult AddCountry(Country country)
        {
            string sqlDataSource = _configuration.GetConnectionString("SpeedwayDbConnection")!;
            var result = _countryService.AddCountry(sqlDataSource, country);
            return result;
        }

        [HttpDelete("{id}")]
        public JsonResult DeleteCountry(int id)
        {
            string sqlDataSource = _configuration.GetConnectionString("SpeedwayDbConnection")!;
            var result = _countryService.DeleteCountry(sqlDataSource, id);
            return result;
        }

        [HttpPut]
        public JsonResult UpdateCountry(Country country)
        {
            string sqlDataSource = _configuration.GetConnectionString("SpeedwayDbConnection")!;
            var result = _countryService.UpdateCountry(sqlDataSource, country);
            return result;
        }

        [Route("SaveFlag")]
        [HttpPost]
        public JsonResult SaveFlag()
        {
            var request = Request.Form;
            var postedFile = request.Files[0];
            var fileName = postedFile.FileName;
            var physicalPath = _env.ContentRootPath + "/Photos/Flags/" + fileName;
            var result = _countryService.SaveFlag(physicalPath, postedFile);
            return result;
        }
    }
}
