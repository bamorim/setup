#!/bin/sh

add_aws()
{
  export AWS_ACCESS_KEY_ID=op://dev/aws-$1/username
  export AWS_SECRET_ACCESS_KEY=op://dev/aws-$1/password
  op run -- aws-vault add --env $1
}

add_aws octos
add_aws furia