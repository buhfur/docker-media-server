
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
> Replace "/root/containers/compose.yml" using the path where you downloaded the git repo to **before** copying the file over to /etc/systemd/system

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
- Systemd installation
    - Copy file over to /etc/systemd/system
        ```bash
        sudo cp ./compose.service /etc/systemd/system/
        ```
    - Enable service 
        ```bash
        sudo systemctl enable compose.service
        ```
    - Stat service 
        ```bash
        sudo systemctl start compose.service 
        ```
    - Restart service 
        ```bash
        sudo systemctl restart compose.service
        ```
    - Check status 
        ```bash
        sudo systemctl status compose.service
        ```
- Configuration
    1. You will need to configure your OpenVPN password in the compose.yml file

# ProtonVPN deluge config 

* You will need to configure the "incoming address" on the deluge client to the IP of the protonVPN container. The client will still show your public IP , however you can verify if the client is using the proper network connection by using this site here 

![Torrent tracker IP checker](https://www.whatismyip.net/tools/torrent-ip-checker/?hash=32e68ed38b14f01fbca9cab7cddeb06fa73929ad)

* You can find the IP of the docker container by running the command below 

```bash
docker network inspect docker-media-server_torrent_network
```

* If you need help finding the bridge name , run `ip addr` and find the IP subnet that matches the one from the command prior


```
