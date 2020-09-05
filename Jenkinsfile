pipeline {
  agent {
    docker {
      args '-v /Users/netbrackets/.m2:/root/.m2'
      image 'maven:3-alpine'
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

    stage('Build') {
      steps {
        sh 'man -Dmaven.test.failure.ignore=true install'
      }
    }

    stage('Report') {
      steps {
        junit 'target/surefire-reports/** /*.xml'
        archiveArtifacts 'target/*.jar,target/*.hpi'
      }
    }

  }
}