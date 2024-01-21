pipeline {
    agent any
    stages {
        stage('Build') {
            steps {
                echo 'Build..'
                checkout([$class: 'GitSCM', branches: [[name: 'main']], userRemoteConfigs: [[url: 'https://github.com/gothinkster/angular-realworld-example-app.git']]])
            }
        }
        stage('Test') {
            steps {
                echo 'Testing..'
            }
        }
        stage('Deploy') {
            steps {
                echo 'Deploying..'
            }
        }
    }
}