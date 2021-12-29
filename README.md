# aws-poc
Repo used to learn AWS and have useful code for using AWS

### Configuring AWS CLI with Docker
```brew install --cask docker```
Get Access Key ID and Secret Key of an IAM profile on the AWS console
To provide these credentials, run
```docker run --rm -it -v ~/.aws:/root/.aws amazon/aws-cli configure```
Then, to produce an alias
```alias aws='docker run --rm -it -v ~/.aws:/root/.aws -v $(pwd):/aws amazon/aws-cli'```