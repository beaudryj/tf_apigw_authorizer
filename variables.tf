variable "rest_api_id" {
  description = "if of rest api to deploy to"
  default     = ""
}

variable "authorizer_name" {
  description = "The name of the authorizer"
  type        = string
  default     = "change me"
}

variable "invocation_role_name" {
  description = "The name of the role to attach to the authorizer"
  type        = string
  default     = "change me"
}


variable "auth_lambda_name" {
  description = "The name of the auth Lambda function"
  type        = string
  default     = "change me"
}

variable "auth_ttl" {
  description = "The TTL of cached authorizer results in seconds."
  type        = string
  default     = "300"
}

variable "auth_token_regex" {
  description = "Regex used for validating incoming token"
  type        = string
}