resource "aws_dynamodb_table" "comfortment-auth-table" {
  name           = "ComfortmentAuth"
  billing_mode   = "PROVISIONED"
  read_capacity  = 1
  write_capacity = 1
  hash_key       = "id"

  attribute {
    name = "id"
    type = "S"
  }

  attribute {
    name = "refreshToken"
    type = "S"
  }
  
  global_secondary_index {
    name               = "ComfortmentAuthIndex"
    hash_key           = "refreshToken"
    write_capacity     = 1
    read_capacity      = 1
    projection_type    = "ALL"
  }
}
resource "aws_dynamodb_table" "comfortment-AI-table" {
  name           = "ComfortmentAI"
  billing_mode   = "PROVISIONED"
  read_capacity  = 1
  write_capacity = 1
  hash_key       = "id"

  attribute {
    name = "id"
    type = "S"
  }

  attribute {
    name = "buildingNumber"
    type = "N"
  }
  
  attribute {
    name = "roomNumber"
    type = "N"
  }

  global_secondary_index {
    name               = "ComfortmentAIIndex"
    hash_key           = "buildingNumber"
    range_key          = "roomNumber"
    write_capacity     = 1
    read_capacity      = 1
    projection_type    = "ALL"
  }
}
