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
            steps {
              withSonarQubeEnv(installationName: 'LocalSonarQube') {
                sh './mvnw clean org.sonarsource.scanner.maven:sonar-maven-plugin:3.9.0.2155:sonar'
              }
            }
        }
    }
}