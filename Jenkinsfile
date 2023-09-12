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
                sh "mvn clean deploy -Dmaven.test.skip=true"
            }
        }

        stage('Unit test') {
            steps {
                echo "---------Unit Test Started----------"
                sh "mvn surefire-report:report"
                echo "---------Unit Test Completed----------"
            }
        }

        stage('SonarQube analysis') {
            environment {
                scannerHome = tool 'Sonar-Scanner'
            }
            steps {
                echo "---------Sonar Scan Started----------"
                withSonarQubeEnv('SonarQube-Server') { // If you have configured more than one global server connection, you can specify its name
                sh "${scannerHome}/bin/sonar-scanner"
                echo "---------Sonar Scan Completed----------"
                }
                echo "---------Sonar Analysis Started----------"
            }
        }
    }
}

