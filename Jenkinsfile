void deployHigh(def ENV, def TAG){
    echo "${ENV}"
    echo "${TAG}"
}

def ENV = '10'

pipeline {
    agent any
    stages {
        stage('Build') {
            steps {
                script {                
                    echo 'Build..'
                    echo env.TAG_NAME
                    if(env.TAG_NAME != null){
                        ACCOUNT_ID = "1010"
                        CLOUDFRONT_ID = "1010"
                        deployHigh("10", "20")
                    }
                    if(env.BRANCH_NAME == 'main'){
                        echo "SERA QUE SE EJECUTARA ?"
                    }
                    // checkout([$class: 'GitSCM', branches: [[name: 'main']], userRemoteConfigs: [[url: 'https://github.com/gothinkster/angular-realworld-example-app.git']]])
                    // checkout([$class: 'GitSCM', branches: [[name: 'main']], userRemoteConfigs: [[url: 'https://github.com/larrietacohen/hello-mama.git']]])
                    sh('pwd')
                    sh('ls -la')
                    echo "${ENV}"
                }
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