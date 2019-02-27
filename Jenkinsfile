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
                
                publishHTML target: [
                    allowMissing: false,
                    alwaysLinkToLastBuild: false,
                    keepAll: true,
                    reportDir: 'gradle-java-at08/build/jacocoHtml',
                    reportFiles: 'index.html',
                    reportName: 'JaCoCo Report'
                  ]
            }
        }
        stage('Deploy') {
            steps {
                echo 'Deploying....'
                sh './gradle-java-at08/gradlew jar -p gradle-java-at08'
            }
        }
    }
    
    post {
        always {
            archiveArtifacts artifacts: 'gradle-java-at08/build/libs/**/*.jar', fingerprint: true
            junit 'gradle-java-at08/build/test-results/**/*.xml'
        }
    }
}
