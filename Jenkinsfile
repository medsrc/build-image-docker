pipeline {
    agent any
    environment {
        IMG_NAME = 'med-nginx'
        DOCKER_REPO = 'build-image-docker'
        } 
       stages {
          stage('cleanUp') {
              steps {
                   deleteDir()
              }
        }
        stage('Checkout SCM') {
            steps {
                git branch: 'main', url: 'https://github.com/medsrc/build-image-docker.git'
                  }
        }
        stage('build') {
            steps {
                script {
                        sh 'docker build -t ${IMG_NAME} .'
                        sh 'docker tag ${IMG_NAME} ${DOCKER_REPO}:${IMG_NAME}'
                }
            }
             stage('deploiement conteneur') {
            steps {
                script {
                        sh 'docker run -d --name monapp --hostname monapp ${IMG_NAME}'
                }
            }
        }
