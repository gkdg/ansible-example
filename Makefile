build:
	docker-compose build

run: build
	docker-compose up -d 
	docker network inspect server-network_snet | jq -c '.[] | .Containers | map(.Name + " : " + .IPv4Address) | sort | .[]' > hosts.txt

