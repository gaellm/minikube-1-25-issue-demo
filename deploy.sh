#!/bin/bash

SCRIPT_PATH=$(dirname "$0")

#create namespace
kubectl create namespace monitoring --dry-run=client -o yaml | kubectl apply -f -

#deploy observability tools
kubectl apply -f $SCRIPT_PATH/prometheus
