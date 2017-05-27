# convoy-daemon

Runs [convoy](https://github.com/rancher/convoy) in a container.

# Usage

The container needs to be able to configure itself as a plugin and communicate with the docker socket.

E.g. to use the VFS/NFS backend:

```bash
docker run -d -v /var/run/docker.sock:/var/run/docker.sock -v /etc/docker/plugins:/etc/docker/plugins -v /opt/storage:/opt/storage daemon --drivers vfs --driver-opts vfs.path=/opt/storage/convoy-volumes
```

# Extra

```bash
alias convoy='docker exec convoy-daemon'
convoy list
```
