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
        stage('build image') {
            steps {
                script {
                        sh 'docker build -t ${IMG_NAME} .'
                        sh 'docker tag ${IMG_NAME} ${DOCKER_REPO}:${IMG_NAME}'
                }
            }
         }

           stage('deploiement conteneur') {
            steps {
                script {
                        sh 'docker stop monapp'
                        sh 'docker rm monapp'
                        sh 'docker run -d --name monapp --hostname monapp -p 8585:80 ${IMG_NAME}'
                      }
                }
            }
       }
   }
