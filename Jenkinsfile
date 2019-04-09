#!/usr/bin/env groovy
pipeline {
    agent any
    stages {
        stage('Stage 1') {
            steps {
               def ret = sh returnStdout: true, script: './startServer.sh'
               echo ret
            }
        }
    }
}