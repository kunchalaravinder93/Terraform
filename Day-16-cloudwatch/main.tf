provider "aws" {
  region = "us-east-2"
}

resource "aws_cloudwatch_dashboard" "example_dashboard" {
  dashboard_name = "MyDashboard"

  dashboard_body = jsonencode({
    widgets = [
      {
        type   = "metric"
        x      = 0
        y      = 0
        width  = 6
        height = 6
        properties = {
          metrics = [
            ["AWS/EC2", "CPUUtilization", "InstanceId", "i-0d553fefd5f1a21ff"]
          ]
          period     = 300
          stat       = "Average"
          region     = "us-east-2"
          title      = "EC2 CPU Utilization"
        }
      },
      {
        type   = "metric"
        x      = 6
        y      = 0
        width  = 6
        height = 6
        properties = {
          metrics = [
            ["AWS/Lambda", "Invocations", "FunctionName", "my_lambda_function"]
          ]
          period     = 60
          stat       = "Sum"
          region     = "us-east-2"
          title      = "Lambda Invocations"
        }
      }
    ]
  })
}