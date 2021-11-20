  curl -v \
  -H 'X-GitHub-Event: push' \
  -H 'Content-Type: application/json' \
  -d '{"ref":"refs/heads/main","head_commit":{"name":"master"}}' \
 	http://hello-github-listener-el-hello-world.apps-crc.testing