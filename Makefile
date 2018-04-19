build: main.go
	@mkdir -p target
	@go build -o target/connect-kafka

clean:
	@rm -rf target

docker:
	@./package.sh linux > /dev/null
	@docker build -t arizz96/connect-kafka . > /dev/null

docker-push: docker
	@docker push arizz96/connect-kafka

.PHONY: clean docker
