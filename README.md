Ansible test to install on my home server, I assume that it runs ubuntu and nothing else. Note also mostly for my own consumption

How to run

```bash
bash -xec "$(curl -L https://raw.githubusercontent.com/ansible-home/master/bootstrap.sh)"
ansible-playbook -i ansible-home/bootstrap.yml
```

Warning heavily under construction use at own risk
