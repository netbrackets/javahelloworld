pipeline {
  agent {
    docker {
      image 'maven:3.3.9-jdk-8'
      args '-v /Users/netbrackets/.m2:/root/.m2'
    }

  }
  stages {
    stage('Initialize') {
      steps {
        sh '''echo PATH = {$PATH}
echo M2_HOME = {$M2_HOME}
mvn clean'''
      }
    }

  }
}