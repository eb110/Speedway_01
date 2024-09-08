pipeline {
    agent any

    stages {
        stage('Git_Check') {
            steps {
                git branch: 'main'
                git 'https://github.com/eb110/Speedway_01'
            }
        }
    }
}