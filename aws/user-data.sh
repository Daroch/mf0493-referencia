#!/bin/bash
# Se ejecuta una sola vez, como root, en el primer arranque de la instancia
dnf install git -y
dnf install docker -y
systemctl enable --now docker
usermod -aG docker ec2-user
 
# Plugins de Compose y buildx para todos los usuarios
P=/usr/local/lib/docker/cli-plugins
mkdir -p $P
curl -fSL https://github.com/docker/compose/releases/latest/download/docker-compose-linux-x86_64 -o $P/docker-compose
curl -fSL https://github.com/docker/buildx/releases/download/v0.38.1/buildx-v0.38.1.linux-amd64 -o $P/docker-buildx
chmod +x $P/docker-compose $P/docker-buildx
