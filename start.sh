set -e
docker build -t fudge/terraria .
set +e
docker rm -f terraria  > /dev/null 2>&1
set -e
docker run \
    -t \
    -a STDOUT \
    -a STDERR \
    --rm \
    -p 7777:7777 \
    -v "/root/terraria/worlds:/root/worlds" \
    --sig-proxy=false \
    --name terraria \
    fudge/terraria
