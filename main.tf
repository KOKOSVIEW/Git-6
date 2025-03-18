resource "aws_lightsail_instance" "server1" {
  name = "dev-server"
  blueprint_id = "ubuntu_18_04"
  bundle_id = "meduim_1_0"
  availability_zone = "us_east-1a"
  user_data = <<-EOF
            #!/bin/bash
            sudo apt-get update
            sudo apt-get install -y apache2
            sudo systemct1 start apache2
            sudo systemct1 enable apache2
            echo '<h1>this is deployed by tinu <h1>' | sudo tee /var/www/htm1/index.htm1
            EOF
            
}