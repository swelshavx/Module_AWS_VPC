variable "region" {
  type    = string
  default = "us-west-2"
}


variable "subnet_id" {
  type    = string
  default = ""
}

variable "vpcid" {
  type = string
  default = ""
  
}
variable "subnet" {
  type = string
  default = ""
}
variable "cidr_block" {
  type = string
  default = "10.8.0.0/16"
}
