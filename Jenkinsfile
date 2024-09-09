pipeline {

    agent any

    environment {
        //location of the installation folder
        DOTNET_CLI_HOME = "C:\\Program Files\\dotnet"
    }

    stages {

        stage('Checkout') {
            steps {
                //copyt project files to jenkins
                checkout scm
            }
        }

        stage('Restore') {
            steps {
                script {
                    //in this scenario the project is going to be tested from the
                    //win11 env so we do not have to specify the path for dotnet
                    //Restoring dependencies
                    //bat "cd ${DOTNET_CLI_HOME} && dotnet restore"
                    bat "dotnet restore"

                    //building the application
                    //bat "dotnet build -- configuration Release"
                }
            }
        }

           stage('Build') {
            steps {
                script {
                    //in this scenario the project is going to be tested from the
                    //win11 env so we do not have to specify the path for dotnet
                    //Restoring dependencies
                    //bat "cd ${DOTNET_CLI_HOME} && dotnet restore"
                    //bat "dotnet restore"

                    //building the application
                    bat "dotnet build -- configuration Release"
                }
            }
        }

        stage ('Test') {
            steps {
                script {
                    //Running tests
                    bat "dotnet test --no-restore --configuration Release"
                }
            }
        }

        stage('Publish') {
            steps {
                script {
                    //Publish the application
                    bat "dotnet publish --no-restore --configuration Release --output .\\publish"
                }
            }
        }

    }

    post {
        success {
            echo 'Build, test and publish successful'
        }
    }

}