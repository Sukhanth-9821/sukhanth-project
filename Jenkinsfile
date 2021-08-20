pipeline{
    agent any
    tools {
        terraform 'Terraform-11'
    }
    stages{
        stage("Terraform Init"){
                steps{
                sh 'terraform init'
            }
        }
        stage("terraform workspace select"){
            steps{
                sh 'terraform workspace select default'
            }
        }
        stage("terraform workspace deletion"){
            steps{
                sh 'terraform workspace delete production -force'
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

        // stage("Terraform Drop"){
        //         steps{
        //         sh 'terraform destroy --auto-approve'
        //     }
        // }


    }
}