name = "testing"

region = "eu-west-1"

profile = "playground"

policy = <<EOF
{
  "rules": [
      {
          "rulePriority": 1,
          "description": "Expire images older than 14 days",
          "selection": {
              "tagStatus": "untagged",
              "countType": "sinceImagePushed",
              "countUnit": "days",
              "countNumber": 14
          },
          "action": {
              "type": "expire"
          }
      }
  ]
}
EOF
