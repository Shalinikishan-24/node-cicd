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
                sh 'npm install'
            }
        }

        stage('Build') {
            steps {
                echo 'Building the Node.js application...'
            }
        }

        stage('Test') {
            steps {
                echo 'Running tests (if any)...'
            }
        }

        stage('Package with Docker') {
            steps {
                sh 'docker build -t node-cicd-app .'
            }
        }

        stage('Run Container') {
            steps {
                sh 'docker run -d -p 3000:3000 node-cicd-app'
            }
        }
    }

    post {
        success {
            echo '✅ Build completed successfully!'
        }
        failure {
            echo '❌ Build failed. Check logs for details.'
        }
    }
}
