#! /bin/bash

# Delete previous ConfigMaps
kubectl -n fina delete configmap canasta-settings
kubectl -n fina delete configmap canasta-config
kubectl -n fina delete configmap canasta-env

# Create ConfigMaps from the configuration files
kubectl -n fina create configmap canasta-settings --from-file=./settings/
kubectl -n fina create configmap canasta-config --from-file=./config/
kubectl -n fina create configmap canasta-env --from-env-file=.env

# Create all the Kubernetes deployments, services and related objects
kubectl -n fina apply -f Kubernetes/
