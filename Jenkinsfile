pipeline {
  agent {label 'master'} 
    stages{
      stage('Clone repository') {
        steps{
           checkout scm
        }   
      }
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
      
    }
}    
