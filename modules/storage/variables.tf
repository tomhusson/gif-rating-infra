variable "name_prefix" {
  description = "Préfixe des noms (projet-environnement)"
  type        = string
}

variable "unique_suffix" {
  description = "Suffixe pour rendre le nom du compte unique dans tout Azure"
  type        = string
}

variable "location" {
  description = "Région Azure"
  type        = string
}

variable "resource_group_name" {
  description = "Groupe de ressources du stockage"
  type        = string
}

variable "tags" {
  description = "Tags obligatoires"
  type        = map(string)
}

variable "cool_after_days" {
  description = "Nombre de jours sans modification avant passage des GIFs en Cool"
  type        = number
  default     = 30
}
