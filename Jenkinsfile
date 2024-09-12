pipeline{
  agent any

    stages {
        stage('SCM') {
          checkout scm
        }
        stage('SonarQube Analysis') {
          def scannerHome = tool 'SonarScannerLocal'
    withSonarQubeEnv() {
      bat "dotnet ${scannerHome}\\SonarScanner.MSBuild.dll begin /k:\"jenkins_01\""
      bat "dotnet build"
      bat "dotnet ${scannerHome}\\SonarScanner.MSBuild.dll end"
    }
  }
}
}