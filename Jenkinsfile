pipeline {
    agent any

    stages {
        stage('Checkout') {
            steps {
                git branch: 'karsajobs-ui', url: 'https://github.com/Danuptraa/a433-microservices.git'
            }
        }

        stage('Install Dependencies') {
            steps {
                sh 'npm install'
            }
        }

        stage('Build') {
            steps {
                sh 'npm run build'
            }
        }

        stage('Deploy') {
            steps {
                sh 'npm run deploy'
            }
        }
    }
}
