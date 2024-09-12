pipeline {
  agent any
  stages {
       stage('Checkout') {
            steps {
                //copyt project files to jenkins
                checkout scm
            }
        }
    stage ('test'){
      steps {
        script {
          bat "dotnet tool install --global dotnet-sonarscanner"
        }
      }
    }
  }
}