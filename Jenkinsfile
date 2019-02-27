pipeline {
    agent any

    stages {
        stage('Build') {
            steps {
                echo 'Building..'
				sh './gradle-java-at08/gradlew clean build -p gradle-java-at08'
            }
        }
        stage('Test') {
            steps {
                echo 'Testing..'
                sh './gradle-java-at08/gradlew check -p gradle-java-at08'
                sh './gradle-java-at08/gradlew jacocoTestReport -p gradle-java-at08'
            }
        }
        stage('Deploy') {
            steps {
                echo 'Deploying....'
                sh './gradle-java-at08/gradlew jar -p gradle-java-at08'
            }
        }
    }
}
