locals {
    vm = {
        "ms01" = {
            name = "ms01"
            clone = "ubuntu-2004-cloudinit=template"
            full_clone =  true
            memory = 8192
            cores = 8
            disk = "60G"
            ip = "10.1.10.15"
        }
    }
}
variable "pm_api_url" {
    type = string
}
variable "pm_user" {
    type = string
}
variable "pm_pass" {
    type = string
    sensitive = true
}
variable "dns_domain" {
    type = string
    default = "internal.themartinez.house"
}
 variable "dns_ip" {
     type = string
     default = "10.1.10.20"
 }