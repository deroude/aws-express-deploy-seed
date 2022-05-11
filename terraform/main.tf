terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 3.0"
    }
  }
}

provider "aws" {
  region     = var.aws_region
  access_key = var.aws_access_key
  secret_key = var.aws_secret_key
}

resource "aws_s3_bucket" "deploy_bucket" {
  bucket = "web-app-deploy-bucket"

  tags = {
    Name        = "web-app-deploy-bucket"
  }
}

resource "aws_s3_bucket_acl" "deploy-bucket-acl" {
  bucket = aws_s3_bucket.deploy_bucket.id
  acl    = "private"
}

resource "aws_elastic_beanstalk_application" "webapp" {
  name        = "demo-web-app"
}

resource "aws_elastic_beanstalk_environment" "environment" {
  name                = "demo-web-env"
  application         = aws_elastic_beanstalk_application.webapp.name
  solution_stack_name = "64bit Amazon Linux 2 v5.5.2 running Node.js 16"
  
  setting {
      namespace = "aws:autoscaling:launchconfiguration"
      name = "IamInstanceProfile"
      value = "aws-elasticbeanstalk-ec2-role"
  }
}