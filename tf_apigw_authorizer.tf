#############################
# API Gateway Authorizer
#############################
resource "aws_api_gateway_authorizer" "authorizer" {
  name                             = var.authorizer_name
  rest_api_id                      = var.rest_api_id
  authorizer_uri                   = data.aws_lambda_function.auth_lambda.invoke_arn
  authorizer_credentials           = data.aws_iam_role.invocation_role.arn
  authorizer_result_ttl_in_seconds = var.auth_ttl
  identity_validation_expression   = var.auth_token_regex
}


# Authorizer Role
data "aws_iam_role" "invocation_role" {
  name = var.invocation_role_name
}

#############################
# Authorizer Lambda Function
#############################
data "aws_lambda_function" "auth_lambda" {
  function_name = var.auth_lambda_name
}