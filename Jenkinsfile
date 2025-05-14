pipeline {
    agent any
    stages {
        stage('Build') {
            steps {
                sh 'mvn clean package'
            }
        }
        stage('Docker Build') {
            steps {
                sh 'docker build -t myapp .'
            }
        }
        stage('Docker Run') {
            steps {
                sh 'docker run -d -p 8080:8080 myapp'
            }
        }
    }
}
