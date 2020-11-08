#!/bin/bash

echo "Updating development SSM..."
export COGNITO_USER_POOL_ID=`aws cloudformation list-exports --query "Exports[?Name=='serverlesspizza-dev-user-pool'].Value" --output text --profile aws-serverlesspizza-nonprod --region eu-west-1`
COGNITO_USER_POOL_WEB_CLIENT_ID=`aws cloudformation list-exports --query "Exports[?Name=='serverlesspizza-dev-userpool-web-client'].Value" --output text --profile aws-serverlesspizza-nonprod --region eu-west-1`
COGNITO_IDENTITY_POOL_ID=`aws cloudformation list-exports --query "Exports[?Name=='serverlesspizza-dev-identity-pool'].Value" --output text --profile aws-serverlesspizza-nonprod --region eu-west-1`
aws ssm put-parameter --name /serverlesspizza/cognito/user_pool_id/dev --value $COGNITO_USER_POOL_ID --type String --overwrite --region eu-west-1 --profile aws-serverlesspizza-devops
aws ssm put-parameter --name /serverlesspizza/cognito/user_pool_web_client_id/dev --value $COGNITO_USER_POOL_WEB_CLIENT_ID --type String --overwrite --region eu-west-1 --profile aws-serverlesspizza-devops
aws ssm put-parameter --name /serverlesspizza/cognito/identity_pool_id/dev --value $COGNITO_IDENTITY_POOL_ID --type String --overwrite --region eu-west-1 --profile aws-serverlesspizza-devops

aws ssm put-parameter --name /serverlesspizza/cognito/user_pool_id/dev --value $COGNITO_USER_POOL_ID --type String --overwrite --region eu-west-1 --profile aws-serverlesspizza-nonprod
aws ssm put-parameter --name /serverlesspizza/cognito/user_pool_web_client_id/dev --value $COGNITO_USER_POOL_WEB_CLIENT_ID --type String --overwrite --region eu-west-1 --profile aws-serverlesspizza-nonprod
aws ssm put-parameter --name /serverlesspizza/cognito/identity_pool_id/dev --value $COGNITO_IDENTITY_POOL_ID --type String --overwrite --region eu-west-1 --profile aws-serverlesspizza-nonprod

echo "Updating production SSM..."
COGNITO_USER_POOL_ID=`aws cloudformation list-exports --query "Exports[?Name=='serverlesspizza-prod-user-pool'].Value" --output text --profile aws-serverlesspizza-prod --region eu-west-1`
COGNITO_USER_POOL_WEB_CLIENT_ID=`aws cloudformation list-exports --query "Exports[?Name=='serverlesspizza-prod-userpool-web-client'].Value" --output text --profile aws-serverlesspizza-prod --region eu-west-1`
COGNITO_IDENTITY_POOL_ID=`aws cloudformation list-exports --query "Exports[?Name=='serverlesspizza-prod-identity-pool'].Value" --output text --profile aws-serverlesspizza-prod --region eu-west-1`
aws ssm put-parameter --name /serverlesspizza/cognito/user_pool_id/prod --value $COGNITO_USER_POOL_ID --type String --overwrite --region eu-west-1 --profile aws-serverlesspizza-devops
aws ssm put-parameter --name /serverlesspizza/cognito/user_pool_web_client_id/prod --value $COGNITO_USER_POOL_WEB_CLIENT_ID --type String --overwrite --region eu-west-1 --profile aws-serverlesspizza-devops
aws ssm put-parameter --name /serverlesspizza/cognito/identity_pool_id/prod --value $COGNITO_IDENTITY_POOL_ID --type String --overwrite --region eu-west-1 --profile aws-serverlesspizza-devops

aws ssm put-parameter --name /serverlesspizza/cognito/user_pool_id/prod --value $COGNITO_USER_POOL_ID --type String --overwrite --region eu-west-1 --profile aws-serverlesspizza-prod
aws ssm put-parameter --name /serverlesspizza/cognito/user_pool_web_client_id/prod --value $COGNITO_USER_POOL_WEB_CLIENT_ID --type String --overwrite --region eu-west-1 --profile aws-serverlesspizza-prod
aws ssm put-parameter --name /serverlesspizza/cognito/identity_pool_id/prod --value $COGNITO_IDENTITY_POOL_ID --type String --overwrite --region eu-west-1 --profile aws-serverlesspizza-prod

echo "Done."
