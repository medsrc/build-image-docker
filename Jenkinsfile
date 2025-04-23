pipleine {
    agent any
    stages {
         stage('Cloning our Git') {
             steps {
                 git branch: 'main', credentialsId: 'user-GitHub', url: 'https://github.com/medsrc/build-image-docker.git'
             }
    }
         stage('Building our image') {
             steps{
                 sh 'build image -t med/nginx .'
             }
        }
    }
}
                    
