# exposes docker for local environment 
# Create the directory to store the configuration file.
mkdir -p /etc/systemd/system/docker.service.d
# Create a new file to store the daemon options.
echo '[Service]
ExecStart=
ExecStart=/usr/bin/dockerd -H unix:// -H tcp://0.0.0.0:2375' > /etc/systemd/system/docker.service.d/options.conf
# Reload the systemd daemon.
systemctl daemon-reload
# Restart Docker.
systemctl restart docker

echo "done docker setup"