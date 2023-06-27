module "key_pair" {
  source = "terraform-aws-modules/key-pair/aws"

  key_name   = "xxxxxx"
  public_key = "input your keys here"
