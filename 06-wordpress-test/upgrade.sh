#!/usr/bin/env bash

# update
kubectl config set-context --current --namespace wordpress-test
helm upgrade wp-test bitnami/wordpress -n wordpress-test -f ./values.yaml
