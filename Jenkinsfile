def deployHigh(ENV, TAG){
    echo "${ENV}"
    echo "${TAG}"
}

def ENV = 0

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
                        deployHigh("${ENV}", "${env.TAG_NAME}")
                    }
                    if(env.BRANCH_NAME == 'main'){
                        echo "SERA QUE SE EJECUTARA ?"
                    }
                    // checkout([$class: 'GitSCM', branches: [[name: 'main']], userRemoteConfigs: [[url: 'https://github.com/gothinkster/angular-realworld-example-app.git']]])
                    // checkout([$class: 'GitSCM', branches: [[name: 'main']], userRemoteConfigs: [[url: 'https://github.com/larrietacohen/hello-mama.git']]])
                    sh('pwd')
                    sh('ls -la')
                    echo "${ENV}"

                    def userInput = input(
                        id: 'approval',
                        message: '¿Aprobar la ejecución?',
                        parameters: [
                            [$class: 'BooleanParameterDefinition', defaultValue: false, description: 'Aprobar ejecución']
                        ]
                    )
                    
                    // Verifica si el usuario aprobó la ejecución
                    if (userInput) {
                        echo 'La ejecución ha sido aprobada.'
                    } else {
                        error 'La ejecución ha sido rechazada.'
                    }
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