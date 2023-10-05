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
		stage('Build') {
	            steps {
			dir('simple-java-maven-app') { // Set the working directory
	                    sh "ls"
	                    sh "pwd"
	                    sh 'mvn -B -DskipTests clean package'
	                }
	            }
	        }
	        stage('Test') {
	            steps {
	                sh 'mvn test'
	            }
	        }
	}
	post {
		always{
			echo "Build execution completed"
		}
		success {
		    echo "Build passed successfully"
		    archiveArtifacts artifacts: '**/target/*.jar', allowEmptyArchive: true
		}
		failure{
			echo "Exucution failed!!"
		}
	}
}
