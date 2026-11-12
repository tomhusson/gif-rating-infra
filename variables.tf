variable "project" {
  description = "Nom court du projet, utilisé dans les noms et les tags"
  type        = string
}

variable "environment" {
  description = "Environnement (prod)"
  type        = string
}

variable "owner" {
  description = "Responsable des ressources (tag owner)"
  type        = string
}

variable "location" {
  description = "Région Azure"
  type        = string
}

variable "unique_suffix" {
  description = "Suffixe numérique pour les noms globalement uniques (stockage, registre, Key Vault)"
  type        = string
}
