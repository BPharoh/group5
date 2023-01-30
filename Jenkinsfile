pipeline {
  agent any
  stages {
    stage('Initialise') {
      parallel {
        stage('Initialise') {
          steps {
            sh 'echo initialization started......'
          }
        }

        stage('') {
          steps {
            catchError(buildResult: '1', message: 'sucess', stageResult: '2') {
              echo 'sucess'
            }

          }
        }

      }
    }

    stage('Build') {
      parallel {
        stage('Build') {
          steps {
            sh 'echo build stage'
          }
        }

        stage('') {
          steps {
            build(job: 'by pass for html', quietPeriod: 4)
          }
        }

      }
    }

    stage('Test') {
      steps {
        sh 'echo testing...'
      }
    }

    stage('Push') {
      steps {
        sh 'echo push stage'
      }
    }

    stage('status') {
      steps {
        sh 'Hurray !!! Nothing runnned successfully ......'
      }
    }

  }
}