# docker-ethminer
Docker container image for ethminer


# Usage

Run ethminer in a docker container

```
docker run -d --device /dev/kfd --device /dev/dri --name r351574nc3/ethminer:rocm eth-us-west1.nanopool.org:9999 wallet:password
```