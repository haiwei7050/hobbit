#!/usr/bin/env groovy
pipeline {
    agent any
    environment {
        // Using returnStdout
        CC = """${sh(
                returnStdout: true,
                script: 'echo "clang"'
            )}"""
        // Using returnStatus
        EXIT_STATUS = """${sh(
                returnStatus: true,
                script: 'exit 1'
            )}"""
    }
    stages {
        stage('Example') {
            environment {
                ZHW = """${sh(
                                      returnStdout: true,
                                      script: './startServer.sh'
                                  )}"""
            }
            steps {
                sh 'printenv'
            }
        }
    }
}