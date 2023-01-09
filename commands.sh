#create an s3 bucket
aws s3 mb s3://viniciuspc-code-sam

#package cloudformation
aws cloudformation package --s3-bucket viniciuspc-code-sam --template-file template.yaml --output-template-file gen/template-generated.yaml
# or sam package ...

#deploy
aws cloudformation deploy --template-file /home/viniciuspc/AWSCertfiedDeveloper/code/my-sam/gen/template-generated.yaml --stack-name hello-world-sam --capabilities CAPABILITY_IAM