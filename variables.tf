variable "aws_region" {
	default = "eu-west-1"
}

variable "vpc_cidr" {
	default = "xxx.0.0.0/25"
}

variable "subnets_cidr" {
	type = list
	default = ["xxx.0.0.0/26", "xxx.0.0.64/27", "xxx.0.0.96/27"]
}

variable "azs" {
	type = list
	default = ["eu-west-1a", "eu-west-1b", "eu-west-1c"]
}

variable "s3_endpoint_type" {
  description = "S3 VPC endpoint type. Note - S3 Interface type support is only available on AWS provider 3.10 and later"
  type        = string
  default     = "Gateway"
}

variable "s3servicename" {
	default = "com.amazonaws.eu-west-1.s3"
}

variable "peer_region" {
	default = "eu-west-1"
}

variable "peer_accepter_id" {
	default = "yyy"
}

variable "accepter_vpc_id_stg" {
	default = "vpc-yyy"
}

variable "accepter_vpc_id_prd" {
	default = "vpc-yyy"
}

variable "accepter_cidr_stg" {
	default = "xxx.xxx.xxx.0/19"
}

variable "accepter_cidr_prd" {
	default = "xxx.xxx.xxx.0/19"
}

variable "peer_west2region" {
	default = "us-west-2"
}

variable "peer_east1region" {
	default = "us-east-1"
}

variable "peer_accepterwest2_id" {
	default = "xxx"
}

variable "accepter_vpc_id_west2" {
	default = "vpc-xxx"
}

variable "accepter_vpc_id_east1" {
	default = "vpc-xxx"
}

variable "accepter_cidr_west2" {
	default = "xxx.xxx.xxx.0/23"
}

variable "accepter_cidr_east1" {
	default = "xxx.xxx.xxx.0/23"
}

variable "amiid"{
	default = "ami-01cae1550c0adea9c"
}

variable "keyname" {
	default = "xxxxxx"
}

variable "instancetype" {
	default = "t2.micro"
}
