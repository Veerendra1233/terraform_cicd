terraform {
  backend "s3" {
    bucket = "terraform-my-project-state"  # Replace with your S3 bucket name
    key    = "path/to/terraform.tfstate"  # Define path where state will be stored
    region = "us-east-2"                  # Replace with your AWS region
    encrypt = true                        # Enable encryption for security
    acl     = "private"                   # Keep the state file private
  }
}
