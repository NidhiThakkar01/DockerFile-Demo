pipeline{
	agent{
		dockerfile true
	}
	stages{
		stage("maven version check"){
			steps{
				sh 'pwd'
				sh 'mvn test'
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
        	always {
            script {
                def githubStatus = currentBuild.resultIsBetterOrEqualTo("SUCCESS") ? 'SUCCESS' : 'FAILURE'
                def githubDescription = currentBuild.resultIsBetterOrEqualTo("SUCCESS") ? 'Build and test passed' : 'Build and test failed'

                // Specify the context and target URL
                def context = 'Jenkins CI'
                def buildUrl = currentBuild.absoluteUrl

                // Update the GitHub commit status using the githubNotify step
                step([
                      $class: "GitHubCommitStatusSetter",
                      reposSource: [$class: "ManuallyEnteredRepositorySource", url: "https://github.com/NidhiThakkar01/DockerFile-Demo"],
                      contextSource: [$class: "ManuallyEnteredCommitContextSource", context: "ci/jenkins/build-status"],
                      errorHandlers: [[$class: "ChangingBuildStatusErrorHandler", result: "UNSTABLE"]],
                      statusResultSource: [ $class: "ConditionalStatusResultSource", results: [[$class: "AnyBuildResult", message: "$githubDescription", state: "$githubStatus"]] ]
                  ]);
            }
        }
    }
}
