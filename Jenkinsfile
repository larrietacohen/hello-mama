pipeline {
    agent any
    stages {
        stage('Build') {
            steps {
                echo 'Build..'
                echo env.TAG_NAME
                // checkout([$class: 'GitSCM', branches: [[name: 'main']], userRemoteConfigs: [[url: 'https://github.com/gothinkster/angular-realworld-example-app.git']]])
                // checkout([$class: 'GitSCM', branches: [[name: 'main']], userRemoteConfigs: [[url: 'https://github.com/larrietacohen/hello-mama.git']]])
                sh('pwd')
                sh('ls -la')
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