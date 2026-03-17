pipeline {
    agent any

    stages {
        stage('Clone') {
            steps {
                git url:'https://github.com/anuragpm1992-sketch/docker-project.git',branch:'master'
            }
        }
        stage('Build Docker image'){
            steps{
                sh 'docker build -t jenkins-docker-app .'
            }
        }
        stage('Stopping old containers'){
            steps{
                sh 'docker kill $(docker ps -q) && docker rm -f $(docker ps -aq)'
            }
        }
        stage('Run Container'){
            steps{
                sh 'docker run -d -p 80:80 --name mycontainer jenkins-docker-app'
            }
        }
    }
}

