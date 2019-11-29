pipeline {
  agent {label 'master'} 
    stages{
     
       stage('Build') {
          steps {
                sh 'mvn -B -DskipTests clean package'
          }
      }
      stage('Test') {
        steps {
              sh 'mvn test'
        }
      }
       stage ('copy imge'){
       steps  {
              sh 'mkdir /mnt/artefact'
              sh ' cp  /var/lib/jenkins/workspace/equal/target/*.jar  /mnt/artefact/'
       }
      }
    }
      
    }
