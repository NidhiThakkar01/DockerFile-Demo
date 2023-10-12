pipeline{
	agent{
		dockerfile true
	}
	stages{
		stage("maven version check"){
			steps{
				error "Throwing an error"
			}
		}
		// stage('maven version') {
	 //            steps {
		// 	sh "mvn --version"
	 //            }
	 //        }
	 //        stage('node version') {
	 //            steps {
	 //                sh 'node --version'
	 //            }
	 //        }
		// stage('Environment var print') {
	 //            steps {
	 //                sh "env"
	 //            }
	 //        }
	}
	post {
        success {
            script {
                def buildUrl = currentBuild.absoluteUrl
                def github = GitHub.connect()
                def repository = github.getRepository('NidhiThakkar01/DockerFile-Demo')
                def prNumber = currentBuild.displayName.split('#')[1]
                def sha = currentBuild.revision

                def context = 'Jenkins CI'
                def description = 'Build and test passed'
                repository.createCommitStatus(sha, 'SUCCESS', description, context, buildUrl, prNumber)
            }
        }
        failure {
            script {
                def buildUrl = currentBuild.absoluteUrl
                def github = GitHub.connect()
                def repository = github.getRepository('NidhiThakkar01/DockerFile-Demo')
                def prNumber = currentBuild.displayName.split('#')[1]
                def sha = currentBuild.revision

                def context = 'Jenkins CI'
                def description = 'Build and test failed'
                repository.createCommitStatus(sha, 'FAILURE', description, context, buildUrl, prNumber)
            }
        }
    }
}
