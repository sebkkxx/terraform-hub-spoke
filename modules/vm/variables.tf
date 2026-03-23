variable "resource_group_name" {
  description = "Name of the resource group"
  type        = string
}

variable "location" {
  description = "Azure region"
  type        = string
}

variable "vm_name" {
  description = "Name of the VM"
  type        = string
}

variable "vm_size" {
  description = "VM size (SKU)"
  type        = string
  default     = "Standard_B2s_v2"
}

variable "subnet_id" {
  description = "Subnet ID where VM will be deployed"
  type        = string
}

variable "public_ip_enabled" {
  description = "Whether to create a public IP"
  type        = bool
  default     = false
}

variable "os_publisher" {
  description = "OS publisher"
  type        = string
  default     = "MicrosoftWindowsServer"
}

variable "os_offer" {
  description = "OS offer"
  type        = string
  default     = "WindowsServer"
}

variable "os_sku" {
  description = "OS SKU"
  type        = string
  default     = "2022-Datacenter"
}

variable "os_version" {
  description = "OS version"
  type        = string
  default     = "latest"
}
