pipeline {
    environment {
        registry = "tslaceo/flask-pytest"
        imageName = 'flask-pytest'
        registryCred = 'tslaceo'
        gitProject = "https://github.com/tslaceo/flask-pytest-example.git"
    }
    agent any
    options {
        timeout(time: 1, unit: 'HOURS')
    }
    stages {
        stage ('preparation') {
            steps {
                deleteDir()
            }
        }
        stage ('get src from git') {
            steps {
                git 'https://github.com/tslaceo/flask-pytest-example.git'
            }
        }
        stage ('build docker') {
            steps {
                script {
                    dockerImage = docker.build registry + ":$BUILD_NUMBER"
                }
            }
        }
        stage ('docker publish') {
            steps {
                script {
                    docker.withRegistry( '', registryCred ) {
                        dockerImage.push()
                    }
                }
            }
        }
        stage ('docker pull') {
            steps{
                docker.withRegistry( '', registryCred){
                    dockerImage.pull()
                }
            }
        }
        stage ('docker run') {
            steps{
                sh "docker run -d --name flask-pytest -p 5000:5000 " + registry + ":$BUILD_NUMBER"
            }
        }
        stage ('cleaning') {
            steps {
                sh "docker rmi $registry:$BUILD_NUMBER"
            }
        }
    }
}
