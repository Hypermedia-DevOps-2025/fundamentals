#!/bin/bash

container="test_app-mariadb-1"
lines=20

follow=false
echo "Errors in container: $container"
docker logs -f "$container" 2>&1 | grep -i -E "error|warn|fail"


