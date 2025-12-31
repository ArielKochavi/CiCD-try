pipeline {
    agent any

    stages {
        stage('Checkout') {
            steps {
                checkout scm
            }
        }

        stage('Build Docker Image') {
            steps {
                sh 'docker build -t html-site .'
            }
        }

        stage('Deploy') {
            steps {
                sh '''
                docker rm -f html-site || true
                docker run -d -p 8081:80 --name html-site html-site
                '''
            }
        }
    }
}
