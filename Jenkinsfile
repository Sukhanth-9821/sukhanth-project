pipeline{
    agent any
    tools {
        terraform 'Terraform-11'
    }
    stages{
        stage("Terraform Init"){
                steps{

                sh 'terraform init -input=yes'

            }
        }
        
        stage("terraform workspace production"){
            steps{
                sh 'terraform workspace new production'
            }
        }
        stage("Terraform Apply"){
                steps{
                sh 'terraform apply --auto-approve'
            }
        }

        stage("Terraform Drop"){
                steps{
                sh 'terraform destroy --auto-approve'
            }
        }


    }
}