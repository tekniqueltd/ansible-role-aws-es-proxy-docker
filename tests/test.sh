#!/bin/bash -e
ansible-playbook -t aws_es_proxy_docker_testing ./test.yml -vv
docker-compose -f ./output/docker-compose.yml config > /dev/null
[[ $(docker ps --filter status=running --filter name="^/output_aws-es-proxy_1" -q | wc -l) -eq 1 ]]
curl -XGET http://localhost:9200

