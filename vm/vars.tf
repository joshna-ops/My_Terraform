variable "location" {
  description = "The location of the virtual machine."
  type        = string
  
}
variable "resource_group_name" {
  description = "The name of the resource group in which to create the virtual machine."
  type        = string
  
}
variable "vm_name_prefix" {
  description = "The prefix for the virtual machine names."
  type        = string
}
# variable "vm_count" {
#   description = "The number of virtual machines to create."
#   type        = number
# }
variable "vm_size" {
  description = "The size of the virtual machine."
  type        = string
}
variable "vm_image_publisher" {
  description = "The publisher of the virtual machine image."
  type        = string
}
variable "vm_image_offer" {
  description = "The offer of the virtual machine image."
  type        = string
}
variable "vm_image_sku" {
  description = "The SKU of the virtual machine image."
  type        = string
}
variable "admin_username" {
  description = "The admin username for the virtual machine."
  type        = string
}
variable "admin_password" {
  description = "The admin password for the virtual machine."
  type        = string
}
variable "tags" {
  description = "A mapping of tags to assign to the resource."
  type        = map(string)
}

variable "subnet_id" {
  description = "The ID of the subnet to which the virtual machine will be connected."
  type        = string
}