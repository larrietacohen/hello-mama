pipeline {
    agent any
    def myEnv = 0
    stages {
        stage('Build') {
            steps {
                script {                
                    echo 'Build..'
                    echo env.TAG_NAME
                    if(env.TAG_NAME != null){
                        echo "SE HA EJECUTADO EL TAG NAME PERO VEREMOS LO SIGUIENTE"
                        myEnv = 10
                    }
                    if(env.BRANCH_NAME == 'main'){
                        echo "SERA QUE SE EJECUTARA ?"
                    }
                    // checkout([$class: 'GitSCM', branches: [[name: 'main']], userRemoteConfigs: [[url: 'https://github.com/gothinkster/angular-realworld-example-app.git']]])
                    // checkout([$class: 'GitSCM', branches: [[name: 'main']], userRemoteConfigs: [[url: 'https://github.com/larrietacohen/hello-mama.git']]])
                    sh('pwd')
                    sh('ls -la')
                    echo ${myEnv}
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