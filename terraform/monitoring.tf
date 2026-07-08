resource "aws_cloudwatch_metric_alarm" "web_1_high_cpu" {
  alarm_name          = "${var.project_name}-web-1-high-cpu"
  alarm_description   = "Triggers when web1 CPU utilization is 70% or higher"
  comparison_operator = "GreaterThanOrEqualToThreshold"
  evaluation_periods  = 2
  metric_name         = "CPUUtilization"
  namespace           = "AWS/EC2"
  period              = 300
  statistic           = "Average"
  threshold           = 70

  dimensions = {
    InstanceId = aws_instance.web_1.id
  }

  tags = {
    Name        = "${var.project_name}-web-1-high-cpu"
    Environment = var.environment
  }
}

resource "aws_cloudwatch_metric_alarm" "web_2_high_cpu" {
  alarm_name          = "${var.project_name}-web-2-high-cpu"
  alarm_description   = "Triggers when web2 CPU utilization is 70% or higher"
  comparison_operator = "GreaterThanOrEqualToThreshold"
  evaluation_periods  = 2
  metric_name         = "CPUUtilization"
  namespace           = "AWS/EC2"
  period              = 300
  statistic           = "Average"
  threshold           = 70

  dimensions = {
    InstanceId = aws_instance.web_2.id
  }

  tags = {
    Name        = "${var.project_name}-web-2-high-cpu"
    Environment = var.environment
  }
}