# Global
region = "us-west-2"

env = "tf-workshop"

tags = {
  Terraform   = "true"
  Environment = "workshop"
  Account     = "TF"
}

# VPC Resource
vpc_hub_cidr = "10.0.0.0/16"

vpc_azs = ["us-west-2a", "us-west-2c"]

vpc_public_subnets = ["10.0.128.0/20", "10.0.144.0/20"]

vpc_private_subnets = ["10.0.0.0/19", "10.0.32.0/19"]

# WEB Resource
web_name = "web-tf-workshop"

web_instance_type = "t2.nano"

web_asg_min_size = 1

web_asg_max_size = 2

web_asg_desired_capacity = 1

web_asg_health_check_type = "ELB"

web_alb_target_groups_defaults = {
  "cookie_duration"                  = 86400
  "deregistration_delay"             = 60
  "health_check_interval"            = 5
  "health_check_healthy_threshold"   = 2
  "health_check_path"                = "/"
  "health_check_port"                = "traffic-port"
  "health_check_timeout"             = 4
  "health_check_unhealthy_threshold" = 2
  "health_check_matcher"             = "200"
  "stickiness_enabled"               = false
  "target_type"                      = "instance"
}
