node {
  stage('SCM') {
    checkout scm
  }
  stage('SonarQube Analysis') {
    def scannerHome = tool 'sc'
    withSonarQubeEnv() {
      bat "dotnet ${scannerHome}\\SonarScanner.MSBuild.dll begin /k:\"jenkins_01\" /d:sonar.cs.opencover.reportsPaths=coverage.xml"
      bat "dotnet build"
      bat "coverlet ./Speedway.API.Tests/bin/Debug/net8.0/CovExample.Tests.dll --target \"dotnet\" --targetargs \"test --no-build\" -f=opencover -o=\"coverage.xml\""
      bat "dotnet ${scannerHome}\\SonarScanner.MSBuild.dll end"
    }
  }
}