variable "region" {
    type = string
    description = "region of my vpc"
    default = "ap-south-1"
  
}
variable "vpc_name" {
    type = string
    description = "name of the my vpc"

}
variable "vpc_cidr" {
    type = string
    description = "my cidr block range"
  
  
}
variable "private_cidrs" {
    type = list(string)
}
variable "public_cidrs" {
    type = list(string)
  
}
variable "ami-id" {
    type = string
    description = "Ami id of ubuntu 22.04"
    default = "ami-062df10d14676e201"
}

variable "web-trigger" {
    type = string
    description = "running number for trigger"
    default = "1.0"
}