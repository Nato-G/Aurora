pipeline {
    agent any

    triggers {
        githubPush()
    }
    stages {
        stage('Build') {
            steps {
//                 sh 'pip install -r requirements.txt' // Install any required packages
                sh 'python3 main.py' // Execute the main.py script
            }
        }
    }
}
