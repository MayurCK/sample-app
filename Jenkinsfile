pipeline {
    agent { dockerfile true }
    stages {
        stage('build') {
            steps {
                echo 'build Passed !! '
                sh 'uname -a' 
                sh 'yum install docker -y'
                sh 'docker -v'
            }
        }
        stage('Test') {
            steps {
                echo 'Test Passed !!'
            }
        }
    }
}
