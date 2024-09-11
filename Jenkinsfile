pipeline{
    agent {label 'linux'}
    options {
        buildDiscarder(logRotator(numToKeepStr: '5'))
    }
    stages {
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