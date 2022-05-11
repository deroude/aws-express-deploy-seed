# aws-express-deploy-seed

## AWS credentials

- create a new AWS account
- get your access key / access key secret [here](https://us-east-1.console.aws.amazon.com/iam/home#/security_credentials): go to Access Keys, create a new one and copy the two values
- create 3 secrets in your GitHub secrets page (from your repository home page, go to Settings>Secrets>Actions)
  - `AWS_ACCESS_KEY`
  - `AWS_SECRET_KEY`
  - `AWS_TFVARS`

The latter should look like this:

```
aws_access_key  = "YOUR ACCESS KEY HERE"
aws_secret_key  = "YOUT SECRET KEY HERE"
aws_region      = "eu-central-1"
```