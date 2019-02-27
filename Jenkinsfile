pipeline {
    agent any

    stages {
        stage('Build') {
            steps {
                echo 'Building..'
				sh './task_9/gradlew clean build -p task_9'
            }
        }
        stage('Test') {
            steps {
                echo 'Testing..'
				sh './task_9/gradlew test -p task_9'
            }
        }
        stage('Deploy') {
            steps {
                echo 'Deploying....'
            }
        }
    }
}
