resource "aws_kms_key" "farmpulse" {
  description             = "FarmPulse ${var.environment} KMS key"
  deletion_window_in_days = 30
  enable_key_rotation     = true
}

resource "aws_kms_alias" "farmpulse" {
  name          = "alias/farmpulse-${var.environment}"
  target_key_id = aws_kms_key.farmpulse.id
}

resource "aws_secretsmanager_secret" "pg" {
  name       = "farmpulse/${var.environment}/postgres"
  kms_key_id = aws_kms_key.farmpulse.arn
}

resource "aws_secretsmanager_secret_version" "pg" {
  secret_id = aws_secretsmanager_secret.pg.id
  secret_string = jsonencode({
    username = aws_db_instance.postgres.username
    password = random_password.pg.result
    host     = aws_db_instance.postgres.address
    port     = aws_db_instance.postgres.port
    dbname   = aws_db_instance.postgres.db_name
  })
}
