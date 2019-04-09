#!/usr/bin/env groovy
pipeline {
    agent any
    stages {
        stage('Stage 1') {
            steps {
               environment{ H="""${sh returnStdout: true, script: './startServer.sh'}"""}
               echo env.H
            }
        }
    }
}