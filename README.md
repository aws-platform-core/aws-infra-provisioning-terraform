
# Terraform Infrastructure Provisioning Repository

Infrastructure-as-code repository used by the self-service provisioning platform.

## Overview

This repository contains:

- reusable Terraform modules
- generated stack instantiations for individual requests
- GitHub Actions workflows for plan/apply/destroy
- remote state backend configuration

The backend service creates branches and PRs in this repo when users submit provisioning requests.

---

## Repository Structure

```text
modules/
  aws-s3-bucket/
  aws-ec2-instance/
  aws-lambda-function/
  aws-api-gateway/

stacks/
  req-1777212312421/
    main.tf
    variables.tf
    terraform.tfvars.json
    metadata.json