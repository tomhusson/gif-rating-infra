variable "name_prefix" {
  description = "Préfixe des noms (projet-environnement)"
  type        = string
}

variable "location" {
  description = "Région Azure"
  type        = string
}

variable "resource_group_name" {
  description = "Groupe de ressources dans lequel créer le réseau"
  type        = string
}

variable "tags" {
  description = "Tags obligatoires"
  type        = map(string)
}

variable "vnet_address_space" {
  description = "Plage d'adresses du VNet"
  type        = string
  default     = "10.0.0.0/16"
}

variable "app_subnet_prefix" {
  description = "Plage du sous-réseau application"
  type        = string
  default     = "10.0.1.0/24"
}

variable "data_subnet_prefix" {
  description = "Plage du sous-réseau données"
  type        = string
  default     = "10.0.2.0/24"
}
