resource "aws_key_pair" "aws_arab_key" {
  key_name   = "aws_arab_key" # Specify your desired key pair name
  public_key = file("/home/hossam/.ssh/aws_arab.pub") # Specify the path to your public key file
}