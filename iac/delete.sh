#!/bin/bash

aws cloudformation delete-stack 
    --stack-name 'serverlesspizza-cognito-pipeline' 
    --region eu-west-1
    --profile aws-serverlesspizza-devops


aws ssm delete-parameter --name /serverlesspizza/cognito/user_pool_id/dev --region eu-west-1 --profile aws-serverlesspizza-devops
aws ssm delete-parameter --name /serverlesspizza/cognito/user_pool_web_client_id/dev --region eu-west-1 --profile aws-serverlesspizza-devops
aws ssm delete-parameter --name /serverlesspizza/cognito/identity_pool_id/dev --region eu-west-1 --profile aws-serverlesspizza-devops

aws ssm delete-parameter --name /serverlesspizza/cognito/user_pool_id/dev --region eu-west-1 --profile aws-serverlesspizza-nonprod
aws ssm delete-parameter --name /serverlesspizza/cognito/user_pool_web_client_id/dev --region eu-west-1 --profile aws-serverlesspizza-nonprod
aws ssm delete-parameter --name /serverlesspizza/cognito/identity_pool_id/dev --region eu-west-1 --profile aws-serverlesspizza-nonprod

aws ssm delete-parameter --name /serverlesspizza/cognito/user_pool_id/prod --region eu-west-1 --profile aws-serverlesspizza-prod
aws ssm delete-parameter --name /serverlesspizza/cognito/user_pool_web_client_id/prod --region eu-west-1 --profile aws-serverlesspizza-prod
aws ssm delete-parameter --name /serverlesspizza/cognito/identity_pool_id/prod --region eu-west-1 --profile aws-serverlesspizza-prod
