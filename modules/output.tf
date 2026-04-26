#this will print the public ip address over the console
output "public_ip_address" {
    value = aws_instance.test-instance.public_ip
}