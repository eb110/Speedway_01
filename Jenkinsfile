pipeline {
  agent any
  stages {
    stage ('test'){
      steps {
        script {
          sh 'dotnet tool install --global dotnet-sonarscanner'
        }
      }
    }
  }
}