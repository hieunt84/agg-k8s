#!/bin/sh

# add repo
helm repo add prometheus-community https://prometheus-community.github.io/helm-charts
helm repo update

# install chart
kubectl create ns prometheus
helm install prometheus prometheus-community/kube-prometheus-stack \
-n prometheus \
-f ./values.yaml \
--version "18.0.10"

