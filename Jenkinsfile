pipeline {
    agent any

    tools {
        jdk 'JDK17'
        maven 'Maven'
    }

    stages {

        stage('Checkout') {
            steps {
                checkout scm
            }
        }

        stage('Maven Build') {
            steps {
                bat 'mvn clean package -DskipTests'
            }
        }

        stage('Selenium Test') {
            steps {
                bat 'mvn test'
            }
        }

        stage('Docker Build') {
            steps {
                bat 'docker build -t devopsdemo:1.0 .'
            }
        }

        stage('Docker Push') {
            steps {
                withCredentials([
                    usernamePassword(
                        credentialsId: 'dockerhub-credentials',
                        usernameVariable: 'DOCKER_USERNAME',
                        passwordVariable: 'DOCKER_PASSWORD'
                    )
                ]) {
                    bat '''
                        powershell -NoProfile -Command "$env:DOCKER_PASSWORD | docker login --username $env:DOCKER_USERNAME --password-stdin"
                        docker tag devopsdemo:1.0 %DOCKER_USERNAME%/devopsdemo:1.0
                        docker push %DOCKER_USERNAME%/devopsdemo:1.0
                        docker logout
                    '''
                }
            }
        }
    }
}