# Cloud architecture

<img src="https://i.imgur.com/E5ogsUh.png">

# Pre-requisites 
## AWS account and AWS CLI setup​

1.  <a href="https://portal.aws.amazon.com/gp/aws/developer/registration/index.html">Create an account on AWS</a>
2.  <a href="https://docs.aws.amazon.com/IAM/latest/UserGuide/id_users_create.html">Create a user account</a>
3.  <a href="https://docs.aws.amazon.com/IAM/latest/UserGuide/id_credentials_access-keys.html">Create an access key for a user</a>
4.  <a href="https://docs.aws.amazon.com/cli/latest/userguide/getting-started-install.html">Install AWS CLI</a>
5.  <a href="https://docs.aws.amazon.com/cli/latest/userguide/cli-configure-files.html">Set configuration  settings</a>

## Terraform and code setup

1.  <a href="https://developer.hashicorp.com/terraform/tutorials/aws-get-started/install-cli">Install Terraform</a>
2.  Download the Terraform code:
-   Select the green **Code** button on the main repository page
-   Once the dropdown menu appears, select **Download ZIP​**
3.  Unzip the compressed folder

# Terraform code execution

1.  Fill the terraform.tfvars (example values are entered with AWS profile set to "default" for the testing purposes)​

| Variable | Description |
|-|-|
| root_domain_name | Top domain name |
| aws_route53_zone_id | AWS Public Zone ID to create DNS records for the domain names pointing to Cloudfront |
| bucket_name | Unique bucket name |
| project | One word project description used to add comments and tags to the resources |
| root-object | Root webpage file |
| price_class | Price class of Cloudfront |
| web_folder | Webpage folder in local machine |
| profile_name | Name of the profile created via AWS CLI |
2.  Open CLI in the directory with Terraform files​
    
3.  Type "terraform init"​
    
4.  Type "terraform plan"​
    
5.  To create the resources, type "terraform apply –auto-approve"​
    
6.  Wait for the Terraform to create the resources and access the domain name
    
7.  To destroy the resources, type "terraform destroy –auto-approve"​
