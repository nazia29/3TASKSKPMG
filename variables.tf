variable "cidr" {
    description = "List of CIDR Blocks for public subnets"
    type = list(string)
    default = ["10.0.1.0/24","10.0.2.0/24"]
}

variable "az" {
    description = "List of availability zones for public subnet"
    type = list(string)
    default = ["ap-south-1a","ap-south-1b"]
}
