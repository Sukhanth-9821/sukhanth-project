pipeline{
    agent any
    tools {
        terraform 'Terraform-11'
    }
    stages{
        // stage("Code from SCM"){
        //     steps{
        //         git branch: 'development', url: 'https://github.com/Sukhanth-9821/sukhanth-project.git'
        //     }
        // }
        stage("Terraform Init"){
                steps{
                sh 'terraform init'
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