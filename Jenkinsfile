pipeline {

    
    environment {
        AWS_ACCESS_KEY_ID     = credentials('AWS_ACCESS_KEY')
        AWS_SECRET_ACCESS_KEY = credentials('AWS_SECRET_KEY')
    }

   agent   {

    kubernetes {

        label "terraform"
    }
   }
    stages {
        

        stage('Plan') {
            steps {
                sh 'pwd; terraform init'
                sh "pwd; terraform plan -out tfplan"
                sh 'pwd; terraform show -no-color tfplan > tfplan.txt'
            }
        }
       
       stage('Deploy') {
          steps
          {

          sh "pwd ; terraform apply -input=false tfplan" 
          }
          

       }
    }
     
    

  }