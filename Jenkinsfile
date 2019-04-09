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
                                                            returnStdout: true,
                                                            script: './startServer.sh'
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