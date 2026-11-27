variable "lambda_function_name" {
  description = "Name of the Lambda function"
  type        = string
  default     = "aisa-hello-world-snyk"
}

variable "iam_role_name" {
  description = "Name of the IAM role used by the Lambda function"
  type        = string
  default     = "aisa-hello-world-snyk-role"
}
