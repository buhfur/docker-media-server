firewall-cmd --add-port=8989/tcp --zone=docker --permanent
firewall-cmd --add-port=8989/udp --zone=docker --permanent
firewall-cmd --add-port=9117/tcp --zone=docker --permanent
firewall-cmd --add-port=9117/udp --zone=docker --permanent
firewall-cmd --add-port=7878/tcp --zone=docker --permanent
firewall-cmd --add-port=7878/udp --zone=docker --permanent
firewall-cmd --add-port=8112/tcp --zone=docker --permanent
firewall-cmd --add-port=8112/udp --zone=docker --permanent
firewall-cmd --add-port=6881/tcp --zone=docker --permanent
firewall-cmd --add-port=6881/udp --zone=docker --permanent
firewall-cmd --add-port=58846/tcp --zone=docker --permanent
firewall-cmd --add-port=58846/udp --zone=docker --permanent
firewall-cmd --add-port=8191/tcp --zone=docker --permanent
firewall-cmd --add-port=8191/udp --zone=docker --permanent
firewall-cmd --add-port=8096/tcp --zone=docker --permanent
firewall-cmd --add-port=80/tcp --zone=docker --permanent

firewall-cmd --reload
