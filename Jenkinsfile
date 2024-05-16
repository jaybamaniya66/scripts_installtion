pipeline{
    agent any
    stages {
        stage('Checkout from Git'){
            steps{
                git branch: 'main', url: 'https://github.com/jaybamaniya66/scripts_installtion.git'
            }
        }
        stage('Terraform version'){
             steps{
                 sh 'terraform --version'
             }
        }
        stage('Terraform init'){
             steps{
                    sh 'terraform init'
             }
        }
        stage('Terraform validate'){
             steps{
                    sh 'terraform validate'
             }
        }
        stage('Terraform plan'){
             steps{
                    sh 'terraform plan'
                       
             }
        }
    }
}