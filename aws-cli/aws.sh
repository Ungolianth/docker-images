#!/usr/bin/env bash

set -o errexit
set -o nounset
set -o pipefail
trap - INT TERM

docker run --rm \
	-e "AWS_ACCESS_KEY_ID=${AWS_ACCESS_KEY_ID}" \
	-e "AWS_SECRET_ACCESS_KEY=${AWS_SECRET_ACCESS_KEY}" \
	-e "AWS_DEFAULT_REGION=${AWS_DEFAULT_REGION}" \
	-v "$(pwd):/project" \
	ungolianth/aws-cli \
	"$@"