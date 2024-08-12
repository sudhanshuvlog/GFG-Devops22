resource "aws_instance" "ec2_os1" {
  ami           = data.aws_ami.latest_amazon_linux_ami_id.id
  instance_type = "t2.micro"
  key_name = aws_key_pair.gfg22key.key_name
  subnet_id = aws_subnet.gfgsubnet.id
  tags = {
    Name = "gfg22-terraformLaunchedos-${count.index}"
  }
  vpc_security_group_ids = [aws_security_group.gfgsg.id]
  count = 2
  depends_on = [ aws_key_pair.gfg22key  ]
}

resource "aws_key_pair" "gfg22key" {
  key_name   = "deployer-key"
  public_key = "ssh-rsa key<give a valid key here>"
}

resource "aws_security_group" "gfgsg" {
  name   = var.sgName
  vpc_id = aws_vpc.gfgvpc.id
  dynamic "ingress" {
    for_each = var.allowedIngressPort
    content {
    from_port        = ingress.value
    to_port          = ingress.value
    protocol         = "tcp"
    cidr_blocks      = ["0.0.0.0/0"]
  }
    }
  egress {
    from_port        = 0
    to_port          = 0
    protocol         = "-1"
    cidr_blocks      = ["0.0.0.0/0"]
    ipv6_cidr_blocks = ["::/0"]
  }
}

resource "null_resource" "runmyScript" { #configuration management
  triggers = {
    always_run = timestamp()
  }
  provisioner "local-exec" {
    # Bootstrap script called with private_ip of each node in the cluster
   command = "echo hi > output.txt"
  }
}