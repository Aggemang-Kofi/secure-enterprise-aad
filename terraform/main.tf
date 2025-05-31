provider "azuread" {
  tenant_id = var.tenant_id
}

resource "azuread_user" "standard_user" {
  user_principal_name = "john.smith@yourdomain.onmicrosoft.com"
  display_name        = "John Smith"
  password            = "StrongP@ssw0rd!"
  force_password_change = true
  mail_nickname       = "johnsmith"
}

resource "azuread_user" "admin_user" {
  user_principal_name = "admin@yourdomain.onmicrosoft.com"
  display_name        = "Admin User"
  password            = "StrongP@ssw0rd!"
  force_password_change = true
  mail_nickname       = "adminuser"
}
