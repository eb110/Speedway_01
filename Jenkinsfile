pipeline{
  agent any

    stages {
        stage('SCM') {
          steps{
            checkout scm
          }      
        }
        stage('SonarQube Analysis') {
              environment {
                scannerHome = tool 'sc';
            }
            steps{
    withSonarQubeEnv(credentialsId: 'jenkins-sonar', installationName: 'LocalSonarQube') {
      bat "dotnet ${scannerHome}\\SonarScanner.MSBuild.dll begin /k:\"jenkins_01\""
      bat "dotnet build"
      bat "dotnet ${scannerHome}\\SonarScanner.MSBuild.dll end"
            }
    }
  }
}
}