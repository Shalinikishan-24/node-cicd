pipeline {
    agent any

    tools {
        nodejs "node18"
    }

    stages {
        stage('Checkout') {
            steps {
                git branch: 'main', url: 'https://github.com/Shalinikishan-24/node-cicd.git'
            }
        }

        stage('Install Dependencies') {
            steps {
                bat 'npm install'
            }
        }

        stage('Build') {
            steps {
                bat 'npm run build'
            }
        }

        stage('Test') {
            steps {
                bat 'npm test'
            }
        }

        stage('Package with Docker') {
            steps {
                bat 'docker build -t node-cicd-app .'
            }
        }

        stage('Run Container') {
            steps {
                bat 'docker run -d -p 3000:3000 --name node-cicd node-cicd-app'
            }
        }
    }

    post {
        success {
            echo '✅ Build and Deployment Successful!'
        }
        failure {
            echo '❌ Build failed. Check logs for details.'
        }
    }
}
