# v2bserver
# 1.Docker install

````bash
docker run -d --name=aurora \
-v /root/.cert:/root/.cert \
-e API=API \
-e TOKEN=TOKEN \
-e NODE=NODEID \
-e LICENSE=LICENSE \
-e SYNCINTERVAL=60 \
--restart=always \
--network=host \
v2raysrgo/v2board:latest
````
# 2.sign the ssl for domain
````bash
curl -fsSL https://raw.githubusercontent.com/siemenstutorials/v2bserver/master/sign.sh | bash -s domain.com
````
