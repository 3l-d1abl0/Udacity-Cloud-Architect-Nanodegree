 #TODO: Define the variable for aws_region
 variable "aws_region" {
  default = "ap-south-1"
}

variable "lambda_function_name" {
  default = "greet_lambda"
}

variable "lambda_output_path" {
  default = "output.zip"
}