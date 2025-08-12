#!/bin/bash
cd backend/terraform/generated || exit 1
terraform fmt
terraform validate
