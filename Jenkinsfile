pipeline {
    agent any
    environment {
        IMG_NAME = 'med/nginx'
        DOCKER_REPO = 'build-image-docker'
        }
    stages {
        stage('build') {
            steps {
                script {
                        sh 'docker build -t ${IMG_NAME} .'
                        sh 'docker tag ${IMG_NAME} ${DOCKER_REPO}:${IMG_NAME}'
                }
            }
        }
    }
}
