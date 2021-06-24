# Prerequisites
- python 3.7 or higher
- pip 21.1.2 or higher
- docker 20.10.6 or higher
- docker-compose 1.29.1 or higher
- jq 1.6 or higher
- GNU Make 3.81

# Run the project

> From the terminal type:
`make run`

> Above command also creates ip addresses for control node and servers. Replace ip address placeholders in ***host.ini*** file under the host group called ***containergroup*** by copying ip addresses from hosts.txt file.

>Exec into control_node container by typing:
`docker exec -it control_node /bin/bash`

>Inside the control_node container execute:
`ansible-playbook ansible_playbook.yml`

# How it works
We create 4 containers inside the same network in order to simulate control node and server environment for ansible. 

We use one of them as a control node in order to execute ansible commands. Other three containers acts as a server target where ansible deploy things.

In this case ansible creates and writes a text file in each server.