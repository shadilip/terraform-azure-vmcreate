variable "username" {}
variable "password" {}

#Variable for ResourceGroup
variable "resourceGroup" {
  type = "string"
  default = "my-rgroup"
}

#Variable for Subscription Id
variable "subscriptionId" {
  type = "string"
  default = "fc939fda-41b8-4fdf-b2bb-8502e9317042"
}

#Variable for Client Id
variable "clientId" {
  type = "string"
  default = "f6a898cc-8a99-4799-9391-4e490042a841"
}

#Variable for Client Secret
variable "clientSecret" {
  type = "string"
  default = "89004491-372e-4709-9128-48cc75b64a53"
}

#Variable for Tenant Id
variable "tenantId" {
  type = "string"
  default = "9bddfdd3-d1ad-467c-a04f-f312a77f5854"
}

#Variable for location
variable "location" {
  type = "string"
  default = "UK South"
}

#Variable for environment
variable "environment" {
  type = "string"
  default = "Terraform Demo"
}

#Variable for CIDR
variable "vnetCidr" {
  type = "string"
  default = "10.0"
}

#Variable for DNS label
variable "dns_label" {
  type = "string"
  default = "myvm"
}

#Variable for vm size
variable "vmsize" {
  type = "string"
  default = "Standard_DS1_v2"
}

#Variable for DNS location
variable "dns_location" {
  type = "string"
  default = "uksouth"
}
