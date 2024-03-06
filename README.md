# vsible
automated void linux setup with ansible, intended for local use only, requires user with sudo privilege

add your host to `host`

`ansible-playbook -i host -l hostname -vK playbook.yml`
