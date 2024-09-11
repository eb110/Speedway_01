pipeline{
  agent any

    environment {
        //location of the installation folder
        DOTNET_CLI_HOME = "C:\\Program Files\\dotnet"
    }
    stages {
        stage('SCM Checkout') {
          steps{
           git branch: 'dev', url: 'https://github.com/eb110/speedway_01.git'
            }
        }
       stage('Run Sonarqube') {
            environment {
                scannerHome = tool 'LocalSonarQube';
            }
            steps {
              withSonarQubeEnv(credentialsId: 'jenkins-sonar', installationName: 'SonarScannerLocal') {
                sh "C:/Software/Sonar/sonar-scanner-6.1.0.4477-windows-x64/bin"
              }
            }
        }
    }
}