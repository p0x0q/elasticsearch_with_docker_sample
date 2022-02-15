run:
	docker-compose up --build
nodes:
	curl -X GET "localhost:9200/_cat/nodes?v&pretty"