resource "azurerm_linux_virtual_machine" "DB_VM_NJ" {
  provisioner "remote-exec" {
    inline = [
      "sudo apt-get update",
      "sudo apt-get install -y apache2",
      "sudo ufw allow 'Apache'",
      "sudo systemctl enable apache2",
      "sudo systemctl start apache2"
    ]
    }
  }