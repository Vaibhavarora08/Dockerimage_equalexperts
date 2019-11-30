variable "amis" {
  description = "Which AMI to spawn. Defaults to the Weave ECS AMIs: https://github.com/weaveworks/integrations/tree/master/aws/ecs."
  default = "ami-0c5204531f799e0c6"

  }
variable "instance_type" {
  default = "t2.micro"
}

variable "key_name" {
  default = "equalexperts"
  description = "SSH key name in your AWS account for AWS instances."
}

variable "equalexperts_public_name"{
  description = "The name of the public server."
  default = "jenkins"
}


variable "equalexperts_private_name"{
  description = "The name of the private server."
  default = "docker"
}


variable "securitygroup_public"{
  type = "string"
  description= "Public ec2 security group"
  default="public-jenkins"
}


variable "securitygroup_private"{
  type = "string"
  description= "Private ec2 security group"
  default="private-docker"
}

variable "vpc-cidr"{
  description =" vpc id"
  default ="172.20.0.0/16"
  type ="string"
}

