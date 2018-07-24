Ansible Role: aws-es-proxy-docker
=====================================

Ansible role that deploys a proxy docker container for accessing AWS ElasticSearch service

## Supported Operating Systems

- Debian 9+
- Ubuntu 16.04+ (untested)

## Requirements

- Ansible 2.4+ (on execution host)
- Docker 17+ (on remote host)

## Role Variables

See `./defaults/main.yml` for configurable variables and their defaults

## Example playbook

    ---
    - name: Example play
      hosts: all
      roles:
        - { role: aws-es-proxy-docker }

## Example playbook (with some optional vars set)

    ---
    - name: Example play with some optional vars set
      hosts: all
      roles:
        - { role: aws-es-proxy-docker,
            aws_es_proxy_docker_version: 0.8,
            aws_es_proxy_docker_expose_port: 9200
          }

## Add as a submodule to your playbook repo

    git submodule add https://github.com/tekniqueltd/ansible-role-aws-es-proxy-docker.git roles/aws-es-proxy-docker

