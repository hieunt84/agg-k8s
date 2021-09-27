#!/usr/bin/env bash

# uninstall
kubectl config set-context --current --namespace wordpress-test
helm un wp-test
kubectl delete ns wordpress-test
