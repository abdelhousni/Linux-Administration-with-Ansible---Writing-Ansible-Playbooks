# Scripting Linux Administration

## Scripting Solutions
We Don't Need Ansible - We Can Script IT!
- Well perhaps but ...
- But what about differing operating systems
- What about idempotency and remind me, what is idempotency
- Playbooks are easier, believe me. the hard work has already been done
- But we can use Ansible in scripts
- We can also use Ansible in provisioning Vagrant virtual machines

### Simple Script
A simple script can easily install on a single distribution

### Cross Distribution
Just dealing with two different Linux distributions adds an immense amount of complexity. This is just the script to install one package. We still must copy the script to each system and
execute on each system

```sh
/bin/bash
if [ -f /usr/bin/apt' ]; then
    sudo apt update -y
    sudo apt install -y tree
else
    sudo Yum install -y tree
fi
```

### Executing the Script

```sh
$ chmod u+X sh
$ ./shell. sh

$ scp shell.sh tux 9192.168.33.12:
$ scp shell.sh tux 192.168.33.13:

$ ssh tux@192.168.33.12 -C '-/shell.sh'
$ ssh tux@192.168.33.13 -C '-/shell.sh'
```

Locally, it is easy to execute the script. For the remote systems we must copy the file across
and then execute it

## Creating Scripts Using Ad-hoc Cornmands


## Vagrant Provisioning


## Using Ansible to Provision Vagrant System


## Summary and What•s Next