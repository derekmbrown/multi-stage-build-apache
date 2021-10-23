build:
	docker build -t web .

run:
	docker run -p "8080:80" -d web

delete:
	docker stop $$(docker ps -aq)
	docker rm $$(docker ps -aq)
	docker images -q |xargs docker rmi
	docker system prune -f

list:
	docker images && docker ps -a

exec:
	docker exec -it web bash

logs:
	docker logs web -f

reset:
	make delete
	make build
	make run

test:
	curl -i http://localhost:8080/index.php