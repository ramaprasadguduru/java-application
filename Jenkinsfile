pipeline {
    agent any

    tools {
        maven 'maven' // Assuming you have a Maven tool configured in Jenkins
        jdk 'java'   // Assuming you have a JDK tool configured in Jenkins
    }

    stages {
        stage('Checkout') {
            steps {
                // Checkout the source code from your version control system (e.g., Git)
                checkout scm
            }
        }

        stage('Build') {
            steps {
                // Build the Maven project
                script {
                    def mavenHome = tool 'maven'
                    def mavenCMD = "${mavenHome}/bin/mvn"
                    sh "${mavenCMD} clean install"
                }
            }
        }

        stage('Run Tests') {
            steps {
                // Run tests if applicable
                script {
                    def mavenHome = tool 'maven'
                    def mavenCMD = "${mavenHome}/bin/mvn"
                    sh "${mavenCMD} test"
                }
            }
        }

        stage('Deploy') {
            steps {
                // Deploy or run your application (e.g., run the JAR file)
                script {
                    def mavenHome = tool 'maven'
                    def mavenCMD = "${mavenHome}/bin/mvn"
                    sh "${mavenCMD} exec:java" // Assuming your application has an 'exec:java' goal to run it
                }
            }
        }
    }

    post {
        success {
            echo "Pipeline succeeded! You can add more post-build actions here."
        }
        failure {
            echo "Pipeline failed! You can add more post-build actions for failure handling."
        }
    }
}
