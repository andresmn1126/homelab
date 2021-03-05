resource "proxmox_vm_qemu" "vms" {
    for_each = local.vm
    name = each.value.name
    target_node = "hv01"
    clone = "ubuntu-2004-cloudinit-template" 
    agent = 1
    os_type = "cloud-init"
    cores = each.value.cores
    cpu = "host"
    memory = each.value.memory
    scsihw = "virtio-scsi-pci"
    disk {
        size = each.value.disk
        type = "scsi"
        storage = "local-zfs"
    }
    
    network {
        model = "virtio"
        bridge = "vmbr0"
    }

    ciuser = "ansible"
    searchdomain = var.dns_domain
    nameserver = var.dns_ip
    sshkeys = <<EOF
    ssh-ed25519 AAAAC3NzaC1lZDI1NTE5AAAAIHcA4F7uyTqysCl7i/Xmus15/zvU+h2XmdZ7p5nisfT+ ansible
    EOF
    ipconfig0 = "ip=${each.value.ip}/24,gw=10.1.10.1"
}
