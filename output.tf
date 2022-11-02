output "url" {
    value = format("http://%s", aws_instance.appec2.public_ip)
}