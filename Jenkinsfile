pipeline {
    agent any

//    tools {
//        nodejs '17.7.2'
//    }

/*    options {
        timeout(time: 2, unit: 'MINUTES')
    }
*/
    echo 'Before Pipeline..'

    stages {
        stage('Build') {
            steps {
                echo 'Building..'
            }
        }
        stage('Test') {
            steps {
                echo 'Testing..'
            }
        }
        stage('Deploy') {
            steps {
                echo 'Deploying.. No aparece'
            }
        }
    }
}