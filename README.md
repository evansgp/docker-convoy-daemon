# convoy-daemon


sudo ros config get rancher.repositories.evansgp.url https://raw.githubusercontent.com/evansgp/rancheros-registry/master
sudo ros service list
sudo ros service enable convoy-daemon
sudo ros service up convoy-daemon

# or...


sudo ros service enable /var/lib/rancher/conf/example.yml
#sudo ros service enable https://mydomain.com/example.yml
sudo ros service up <name>

# and...

alias convoy='sudo system-docker exec -it convoy-nfs'
