@echo off
rem set AWS_ACCESS_KEY_ID="<#AWS_ACCESS_KEY_ID#>"
rem set AWS_SECRET_ACCESS_KEY="<#AWS_SECRET_ACCESS_KEY#>"
rem set AWS_DEFAULT_REGION="eu-west-1"

docker run --rm -e "AWS_ACCESS_KEY_ID=%AWS_ACCESS_KEY_ID%" -e "AWS_SECRET_ACCESS_KEY=%AWS_SECRET_ACCESS_KEY%" -e "AWS_DEFAULT_REGION=%AWS_DEFAULT_REGION%" -v "%cd%:/project" ungolianth/aws-cli %*
