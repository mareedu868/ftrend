pipeline {
    agent {
        node {
            label 'maven-agent'
        }
    }

    stages {
        stage('clone') {
            steps {
                sh "git clone https://github.com/mareedu868/ttrend.git"
            }
        }
    }
}

