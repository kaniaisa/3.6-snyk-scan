# 3.6-snyk-scan

A "Hello, World!" AWS Lambda (Node.js) created with Terraform.

- **CI** (`.github/workflows/ci.yaml`) runs on pull requests to `main`:
  - `terraform-checks`: fmt, validate and TFLint
  - `snyk-checks`: `snyk test`, `snyk iac test` and `snyk code test`
- **CD** (`.github/workflows/cd.yaml`) runs on merge to `main`: logs in to AWS with OIDC and runs `terraform apply` to create the Lambda.

Secrets used: `OIDC_ROLE`, `SNYK_TOKEN`.
