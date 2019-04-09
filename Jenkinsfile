#!/usr/bin/env groovy
pipeline {
    agent any
    stages {
        stage('Stage 1') {
            steps {
                sh returnStdout: true, script: './startServer.sh'
            }
        }
    }
}