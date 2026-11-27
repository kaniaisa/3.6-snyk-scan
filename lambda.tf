data "archive_file" "lambda" {
  type        = "zip"
  source_file = "${path.module}/files/index.mjs"
  output_path = "${path.module}/files/index.zip"
}

resource "aws_lambda_function" "hello_world" {
  function_name    = var.lambda_function_name
  role             = aws_iam_role.lambda_role.arn
  handler          = "index.handler"
  runtime          = "nodejs22.x"
  filename         = data.archive_file.lambda.output_path
  source_code_hash = data.archive_file.lambda.output_base64sha256
}
