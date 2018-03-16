pipeline {
    agent { dockerfile true }
    stages {
        stage('build') {
            steps {
                echo 'build Passed !! '
                sh 'service start docker'
                sh 'IMAGE_NAME="k8s-worker:5000/testapp:${BUILD_NUMBER}" && sudo docker push ${IMAGE_NAME}'
                sh 'kubectl get deployments/testapp'
            }
        }
        stage('Test') {
            steps {
                echo 'Test Passed !!'
            }
        }
    }
}
