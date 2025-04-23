pipleine {
    agent docker
    stages { 
            stage('Checkout SCM') {
                   steps {
                     git branch: 'main', credentialsId: 'user_github', url: 'https://github.com/medsrc/build-image-docker.git'
                   }
             }
             stage('build image docker') {
                    steps {
                           sh ' docker build -t  med-nginx  . '
                          }
             }
             stage('Test image docker') {
                    steps {
                         sh ' docker run -ti -p 80:80 med-nginx '
                    }
             }
    }
}
                    
