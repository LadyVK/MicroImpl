node {
stage('pulling code from git'){
checkout scm
}
stage('Maven Build'){
sh '/opt/apache-maven-3.6.0/bin/mvn install'
}
stage('Build Image'){
sh 'sudo docker build -t vidyakamath0612/accountservice:${BUILD_NUMBER} -t vidyakamath0612/accountservice:latest  .'
//sh 'docker tag accountservice:${BUILD_NUMBER} vidyakamath0612/accountfinal5:final'
}
stage('Push Image'){
sh 'docker login -u vidyakamath0612 -p 8990benka'
sh 'docker push vidyakamath0612/accountservice:${BUILD_NUMBER} '
}
stage('Force Deployment'){
sh 'aws ecs update-service --region us-east-1 --cluster VidyaJenkins --service VidyaServiceJenkins --force-new-deployment'

}


}
