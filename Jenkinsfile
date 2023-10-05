pipeline{
	agent{
		docker{
			dockerfile true
		}
	}
	stages{
		stage("maven version check"){
			steps{
				sh "mvn --version"
			}
		}
		stage('Build') {
            steps {
                sh 'mvn -B -DskipTests clean package'
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
			archiveArtifacts artifacts:**/target/.*.jar
		}
		failure{
			echo "Exucution failed!!"
		}
	}
}
