resource "aws_lambda_function" "hello_world_lambda" {
  
  function_name = "hello_world_terraform"
  s3_bucket     = "schedulepilot"
  s3_key        = "hello-world.zip"
  role          = aws_iam_role.lambda_role.arn
  handler       = "dist/app.lambdaHandler"
  runtime       = "nodejs14.x"
}