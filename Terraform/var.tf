variable "vpcName"{
    type = string
    default = "GFG22VPC"
}
variable "subnetName"{
    type = string
    default = "GFG22VPC-Subnet"
}
variable "subnetAvailibilityZone"{
    type = string
    default = "ap-south-1a"
}
variable "keyName"{
    type = string
    default = "ansbilegfg22"
}

variable "sgName"{
    default = "gfg22Sg"
}

variable "allowedIngressPort"{
    type = list
    default = [80, 8080, 9000, 9091, 9090, 82, 22, 9100, 3000]
}