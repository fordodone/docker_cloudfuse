# docker_cloudfuse
----
>build a simple docker container to mount cloud-based object storage using cloudfuse

## usage
1) add cloud API credentials and configuration to file 'credentials'

2) docker build -t fordodone/cloudfuse .

3) docker run --rm -it --privileged fordodone/cloudfuse:latest

4) test by listing the fuse mount

     cd /mnt/cloudfuse && ls

----
## reference
* [GitHub redbo/cloudfuse] (https://github.com/redbo/cloudfuse)


