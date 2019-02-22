node {
stage('pulling code from git'){
checkout scm
}
stage('Maven Build'){
sh '/opt/apache-maven-3.6.0/bin/mvn install'
}
stage('Build Image'){
sh 'sudo docker build -t vidyakamath0612/accountservice:${BUILD_NUMBER} .'
}
stage('Push Image'){
sh 'docker login -u vidyakamath0612 -p 8990benka'
sh 'docker push vidyakamath0612/accountservice:${BUILD_NUMBER} '
sh 'docker push vidyakamath0612/accountservice:latest'
}
stage('Force Deployment'){
sh 'aws ecs update-service --region us-east-1 --cluster VidyaJenkins --service VidyaServiceJenkins --force-new-deployment'

}


}
