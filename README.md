
# Torrent Docker compose 

This project is aimed at converting my existing torrenting infra to docker containers. Below are notes and installation instructions

- Systemd unit 
    ```bash
    [Unit]
    Description="starts docker containers"
    After=network.target

    [Service]
    Type=simple 
    ExecStart=/usr/bin/docker compose  -f /root/containers/compose.yml up  
    Restart=on-failure

    [Install]
    WantedBy=multi-user.target
    ```
> Replace "/root/containers/compose.yml" using the path where you downloaded the git repo to.

- Basic installation 
    1. Install the repo to a directory of your choosing 
        ```bash
        git clone https://github.com/buhfur/docker-media-server ~/docker-media-server

        cd $HOME/docker-media-server
        ```
    2. Run the following command in the repo directory 
        ```bash
        docker compose up -d 
        ```
