pipeline {
    agent {
        node {
            label 'maven-agent'
        }
    }
environment {
    PATH="/opt/apache-maven-3.9.4/bin:$PATH"
}
    stages {
        stage('build') {
            steps {
                sh "mvn clean deploy"
            }
        }
    }
}