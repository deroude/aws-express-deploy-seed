# aws-express-deploy-seed

## AWS credentials

- create a new AWS account
- get your access key / access key secret [here](https://us-east-1.console.aws.amazon.com/iam/home#/security_credentials): go to Access Keys, create a new one and copy the two values
- create 2 secrets in your GitHub secrets page (from your repository home page, go to Settings>Secrets>Actions)
  - `AWS_ACCESS_KEY`
  - `AWS_SECRET_KEY`

With these done, you can run the deploy pipeline, which will effectively deploy your `app` folder to Amazon Elastic Beanstalk -- you'll be able to see your app [here](https://us-east-1.console.aws.amazon.com/elasticbeanstalk/home?region=us-east-1#/applications)