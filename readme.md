# ghe-license-mailer
> Send a [GitHub Enterprise](https://enterprise.github.com) license usage report via email.


## Role Variables

- `ghe_host`

  GitHub Enterprise Hostname
  :information_source: https://help.github.com/enterprise/admin/guides/installation/configuring-a-hostname/
  ```yml
  ghe_host: github.example.com
  ```

- `ghe_token`

  GitHub Enterprise personal access token.
  :information_source: https://help.github.com/enterprise/user/articles/creating-a-personal-access-token-for-the-command-line/
  ```yml
  ghe_token: 0000a0000a0000a0000a0000a0000a0000a0000a
  ```

- `email_to`

  The :email: email-address(es) the license usage report is being sent to.
  Can be a comma-separated list for multiple recipients.
  ```yml
  email_to: ansible@github.example.com
  ```

- `email_from`

  The email-address the mail is sent from.
  ```yml
  email_from: no-reply@github.example.com
  ```

- `email_company`

  Your company name.
  ```yml
  email_company: 'ACME, Inc.'
  ```

- `smtp_host`

  The mail server.
  ```yml
  smtp_host: smtp.example.com
  ```

- `smtp_port`

  The mail server port.
  This must be a valid integer between 1 and 65534.
  ```yml
  smtp_port: 25
  ```

- `smtp_username`

  If SMTP requires username.
  `null` if not.
  ```yml
  smtp_username: username
  ```

- `smtp_password`

  If SMTP requires password.
  `null` if not.
  ```yml
  smtp_password: PassW0rd!
  ```

## Example Playbook
```yml
---
- name: GitHub Enterprise license usage mailer
  hosts: localhost
  gather_facts: true	# required for `ansible_date_time` info

  vars:
    ghe_host: github.example.com
    ghe_token: 0000a0000a0000a0000a0000a0000a0000a0000a
    email_to: ansible@github.example.com
    email_from: no-reply@github.example.com
    email_company: 'ACME, Inc.'
    smtp_host: smtp.example.com
    smtp_port: 25
    smtp_username: username
    smtp_password: PassW0rd!

  roles:
    - role: stoe.ghe_license_mailer

```


## License [![license](https://img.shields.io/github/license/stoe/ansible-role-ghe-license-mailer.svg)](https://github.com/stoe/ansible-role-ghe-license-mailer/blob/master/license)
MIT © [Stefan Stölzle](https://github.com/stoe)
