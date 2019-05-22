#!/bin/bash

if [[ $1 == "d" ]]; then
  terraform destroy -force
  rm -rf .terraform ; rm -rf terraform.tfstate*
else
  terraform init -upgrade=true
  terraform plan
  terraform apply -auto-approve
fi
