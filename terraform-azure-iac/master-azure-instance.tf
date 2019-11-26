resource "azure_instance" "kube_master" {
  name                 = "kube_master"
  image                = "Ubuntu Server 14.04 LTS"
  size                 = "Basic_A1"
  location             = "West US"
  username             = "myuser"
  password             = "mypass"
  custom_data = "${file("${path.module}/data/launch_config.master.user_data")}"
  endpoint {
    name         = "SSH"
    protocol     = "tcp"
    public_port  = 22
    private_port = 22
  }
}
