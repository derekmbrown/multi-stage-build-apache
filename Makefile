build_docker:
	docker build -t web .

run_docker:
	docker run -p "8080:80" -d web

delete_docker:
	docker stop $$(docker ps -aq)
	docker rm $$(docker ps -aq)
	docker images -q |xargs docker rmi
	docker system prune -f

list_docker:
	docker images && docker ps -a

exec_docker:
	docker exec -it web bash

logs_docker:
	docker logs web -f

reset_docker:
	make delete
	make build
	make run

test_docker:
	curl -i http://localhost:8080/index.php