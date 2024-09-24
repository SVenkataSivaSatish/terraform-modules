# variables.tf

variable "region" {
  description = "AWS region"
  type        = string
  default     = "us-west-2"
}

variable "instance_type" {
  description = "EC2 instance type"
  type        = string
  default     = "t2.micro"
}

variable "key_pair" {
  description = "SSH key pair name"
  type        = string
}

variable "ami" {
  description = "AMI ID for the EC2 instance"
  type        = string
  default     = "ami-xxxxxxxx" # Replace with the desired AMI ID
}

variable "tags" {
  description = "Standart set of tags"
  type = object({
    #Name        = string,
    #Environment = string,
    #Application = string,
    #Team        = string,
    #Managed     = string,
    #OwnerEmail  = string,
    #CostCenter  = string,
  LastReview  = string,
  Ticket      = string,
       # source =  "git::ssh://git@github.azc.ext.hp.com/runway/terraform-aws-tags//modules/tags"
  #tags
  variable "app_name" { default = null }
  variable "environment" { default = "Pro" }
  variable "hpit_contact_email" { default = null }
  variable "hpit_cost_center" { default = null }
  variable "hpit_criticality" { default = null }
  variable "hpit_environment" { default = null }
  variable "hpit_eprid" { default = null }
  variable "hpit_mru" { default = null }
  variable "hpit_role" { default = null }
  variable "map_id" { default = null }
  variable "map_prefix" { default = "mig" }
  variable "custom_tags" {
  default = { 
    MonthlyPatchWindow = "MP3CW2"
    CrisisPatchWindow  = "CP2"
  }
  type    = map(any)
}
  })
}

variable "date" {
  description = "Run date for the tag"
  type        = string
  /* default     = "${formatdate("YYYY-MM-DD", timeadd(timestamp(), "24h"))}T00:00:00Z" */
}

variable "app_name" {
  description = "HP Application name"
  type        = string
}

# variable "role" {
#   description = "dev aws account iam role to be assumed by core tf user"
#   type        = string
# }
