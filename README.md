# Homelab

Used to provision my homelab servers.

1. Ensure Ansible is installed
`brew install ansible`

2. Ensure pip is installed
`brew install python3-pip`

3. Ensure docker python library is installed via pip
`pip3 install docker`

4. Clone repo locally.

5. Install ansible-galaxy dependancies

```
ansible-galaxy install roles -r requirements.yml
ansible-galaxy install collections -r requirements.yml
```

