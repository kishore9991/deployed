# defining cidr-block for vpc

variable "vpc_cidr" {
    default = "10.0.0.0/16"
  
}


variable "pub-subnet-1" {
    default = "10.0.0.0/17"
  
}


variable "pub-sub-2" {
    default = "10.0.128.0/18"
  
}


variable "pvt-sub-1" {
    default = "10.0.192.0/19"
  
}


variable "pvt-sub-2" {
    default = "10.0.224.0/20"
  
}

variable "database-sub-1" {
    default = "10.0.240.0/21"
  
}

variable "database-sub-2" {
    default = "10.0.248.0/22"
  
}