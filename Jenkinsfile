pipeline {
    agent any

//     triggers {
//         githubPush()
//     }
    stages {
        stage('Build') {
            steps {
                sh 'python3 main.py' // Execute the main.py script
            }
        }
    }
}
