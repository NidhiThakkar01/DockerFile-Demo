pipeline{
	agent{
		dockerfile true
	}
	stages{
		stage("maven version check"){
			steps{
				sh "mvn --version"
			}
		}
		stage('maven version') {
	            steps {
			sh "mvn --version
	            }
	        }
	        stage('node version') {
	            steps {
	                sh 'node --version'
	            }
	        }
		stage('Environment var print') {
	            steps {
	                echo "$RANDOM_VAR"
	            }
	        }
	}
	post {
		always{
			echo "Build execution completed"
		}
		success {
		    echo "Build passed successfully"
		}
		failure{
			echo "Exucution failed!!"
		}
	}
}
