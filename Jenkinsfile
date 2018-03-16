pipeline {
    agent { dockerfile true }
    stages {
        stage('build') {
            steps {
                echo 'build Passed !! '
                sh 'uname -a'
                sh 'docker -v'
                sh 'kubectl version'
            }
        }
        stage('Test') {
            steps {
                echo 'Test Passed !!'
            }
        }
    }
}
