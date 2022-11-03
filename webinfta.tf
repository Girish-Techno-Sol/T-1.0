resource "aws_instance" "appec2" {
    ami = var.ami-id
    associate_public_ip_address = true
    instance_type = "t2.micro"
    key_name = "mylaptopkeypair"
    vpc_security_group_ids = [aws_security_group.app_sg.id]
    subnet_id = module.vpc.public_subnets[1]
    tags = {
      "Name" = "appec2"
    }
     depends_on = [
       module.vpc,
       aws_security_group.app_sg
     ]
}
resource "null_resource" "webprovisioner" {
  triggers = {
    running_number = var.web-trigger
  }

     provisioner "remote-exec" {
      connection {
        type = "ssh"
        user = "ubuntu"
         private_key = file("~/.ssh/id_rsa")
        host =aws_instance.appec2.public_ip    
      }
      inline = [
        "sudo apt update",
        "sudo apt install nginx  -y"
        
       
      ]
      
     
     }
}

