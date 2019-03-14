workflow "Lint Ansible Role on Push" {
  on = "push"
  resolves = ["Lint Ansible Role Meta", "Lint Ansible Role Tasks"]
}

action "Lint Ansible Role Meta" {
  uses = "ansible/ansible-lint-action@master"
  env = {
    ACTION_PLAYBOOK_NAME = "meta/main.yml"
  }
}

action "Lint Ansible Role Tasks" {
  uses = "ansible/ansible-lint-action@master"
  env = {
    ACTION_PLAYBOOK_NAME = "tasks/main.yml"
  }
  needs = "Lint Ansible Role Meta"
}
