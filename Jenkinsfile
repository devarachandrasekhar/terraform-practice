pipeline {

    agent { node { label 'AGENT-1' } }
    // options {
           //ansiColor('xterm')
    //}
    stages {
        stage('Init') {
            steps {
                  sh '''
            
                   ls -ltr
                  pwd
                  terraform init
                    '''
            }
        }
        stage('plan') {
            steps {
                   sh '''
                    
                     ls -ltr
                     pwd
                     terraform plan
                    '''
            }
        }
      stage('Approve') {
        steps{
            input "Shall I apply"
        }
      }
        
        stage('Apply') {
        steps{
            sh '''
               pwd
               ls -ltr
        
               terraform destroy -auto-approve
            '''     
        }
      }


    }
        post { 
        always { 
            echo 'I will always say Hello again!'
        }
        success{
            echo 'I will run only when job is success'
        }
        failure{
            echo 'I will run when failure'
        }
    }
}
