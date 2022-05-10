variable "service_account_key_file" {
  description = "C:/_otus/key.json"
  default     = "C:/_otus/key.json"
}
variable "cloud_id" {
  description = "b1gmtfo8n32947lctp0p"
  default     = "b1gmtfo8n32947lctp0p"
}
variable "folder_id" {
  description = "b1g5tqkc521bb5k7nqc9"
  default     = "b1g5tqkc521bb5k7nqc9"
}
variable "zone" {
  description = "Zone"
  default     = "ru-central1-a"
}
variable "public_key_path" {
  type        = string
  description = "C:/_otus/ubuntu.pub"
  default     = "C:/_otus/ubuntu.pub"
}
variable "image_id" {
  description = "fd86253meikgl15v3snl"
  default     = "fd86253meikgl15v3snl"
}
variable "subnet_id" {
  description = "e9b32s46j6f7pk52jod9"
  default     = "e9b32s46j6f7pk52jod9"
}
variable "private_key" {
  type        = string
  description = "C:/_otus/ubuntu"
  default     = "C:/_otus/ubuntu"
}
variable "inst_name" {
  description = "reddit-app"
  default     = "reddit-app"
}

variable "app_disk_image" {
  description = "Disk image for reddit app"
  default     = "fd8gnvrkcohld7j44pc4"
}

variable "db_disk_image" {
  description = "Disk image for reddit db"
  default     = "fd8buhrprsvkkkd8uohn"
}

