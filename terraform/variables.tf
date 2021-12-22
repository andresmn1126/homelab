variable "virtual_machines" {
    description = "Map of Virtual Machines to be created"
    type        = map(any)
    default     = {
        "ms01" = {
            name = "ms01"
            clone = "ubuntu-20.04-cloudimg"
            full_clone =  true
            memory = 8192
            cores = 6
            disk = "60G"
            ip = "10.1.10.15"
            agent = 1
        }
        "dev_box" = {
            name = "dev-box"
            clone = "ubuntu-2004-cloudinit=template"
            full_clone = true
            memory = 8192
            cores = 4
            disk = "80G"
            ip = "10.1.10.22"
            agent = 0
        }
        "awx" = {
            name = "awx"
            clone = "ubuntu-2004-cloudinit=template"
            full_clone = true
            memory = 8192
            cores = 4
            disk = "60G"
            ip = "10.1.10.23"
            agent = 0
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
     default = "10.1.10.5"
 }