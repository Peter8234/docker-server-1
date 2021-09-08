# exposes docker for local environment 

# Create the directory to store the configuration file.
sudo mkdir -p /etc/systemd/system/docker.service.d
# Create a new file to store the daemon options.
sudo echo '[Service]
ExecStart=
ExecStart=/usr/bin/dockerd -H unix:// -H tcp://0.0.0.0:2375' > /etc/systemd/system/docker.service.d/options.conf
# Reload the systemd daemon.
sudo systemctl daemon-reload
# Restart Docker.
sudo systemctl restart docker

echo "done docker setup"