using Microsoft.Extensions.Configuration;
using Microsoft.AspNetCore.Mvc;
using Moq;
using Newtonsoft.Json;
using Speedway.Service;
using SpeedwayBackend.Controllers;
using SpeedwayBackend.Models;

namespace Speedway.API.Tests.Controllers
{
    public class PointControllerTests
    {
        private readonly PointController _sut;
        private readonly Mock<IConfiguration> _configurationMock = new Mock<IConfiguration>();
        private readonly Mock<IPointService> _pointServiceMock = new Mock<IPointService>();

        public PointControllerTests()
        {
            _sut = new PointController(_configurationMock.Object, _pointServiceMock.Object);
            var mockConfSection = new Mock<IConfigurationSection>();
            mockConfSection.SetupGet(m => m[It.Is<string>(s => s == "SpeedwayDbConnection")]).Returns("mock value");
            _configurationMock.Setup(a => a.GetSection(It.Is<string>(s => s == "ConnectionStrings"))).Returns(mockConfSection.Object);
        }

        [Fact]
        public void ControllerShouldReturnPointObjects()
        {
            //Arrange
            Point point = new Point();
            point.Id = 1;
            point.Value = 1;
            Point[] pointsArray = [point];
            var json = JsonConvert.SerializeObject(pointsArray);
            var res = "\"[{\\\"Id\\\":1,\\\"Value\\\":1.0}]\"";

            _pointServiceMock.Setup(x => x.GetAllPoints("mock value")).Returns(new JsonResult(json));

            //Act
            var pointsRaw = _sut.GetAllPoints();
            var points = JsonConvert.SerializeObject(pointsRaw.Value);

            //Assert
            Assert.Equal(res, points);
        }

        [Fact]
        public void ControllerShouldDeletePoint()
        {
            //Arrange
            Point point = new Point();
            point.Id = 1;
            point.Value = 1;
            Point[] pointsArray = [];
            var json = JsonConvert.SerializeObject(pointsArray);
            var res = "\"[]\"";

            _pointServiceMock.Setup(x => x.DeletePoint("mock value", 1)).Returns(new JsonResult(json));

            //Act
            var pointsRaw = _sut.DeletePointVersionById(1);
            var points = JsonConvert.SerializeObject(pointsRaw.Value);

            //Assert
            Assert.Equal(res, points);
        }

        [Fact]
        public void ControllerShouldAddPoint()
        {
            //Arrange
            Point point = new Point();
            point.Id = 1;
            point.Value = 1;
            var json = JsonConvert.SerializeObject(point);
            var res = "\"{\\\"Id\\\":1,\\\"Value\\\":1.0}\"";

            _pointServiceMock.Setup(x => x.PostNewPointVersion("mock value", point)).Returns(new JsonResult(json));

            //Act
            var pointsRaw = _sut.PostPointVersion(point);
            var points = JsonConvert.SerializeObject(pointsRaw.Value);

            //Assert
            Assert.Equal(res, points);
        }

        [Fact]
        public void ControllerShouldEditPoint()
        {
            //Arrange
            Point point = new Point();
            point.Id = 1;
            point.Value = 1;
            var json = JsonConvert.SerializeObject(point);
            var res = "\"{\\\"Id\\\":1,\\\"Value\\\":1.0}\"";

            _pointServiceMock.Setup(x => x.UpdatePoint("mock value", point)).Returns(new JsonResult(json));

            //Act
            var pointsRaw = _sut.UpdatePointVersion(point);
            var points = JsonConvert.SerializeObject(pointsRaw.Value);

            //Assert
            Assert.Equal(res, points);
        }
    }
}
