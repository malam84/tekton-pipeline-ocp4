curl -i \
    -H 'X-GitHub-Event: pull_request' \
    -H 'Content-Type: application/json' \
    -d '{
      "pull_request": {"head": {"sha": "master"}}
    }' \
    http://el-hello-hello-world.apps-crc.testing