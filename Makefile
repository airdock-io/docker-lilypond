NAME = airdock/lilypond
VERSION = dev

.PHONY: all clean build tag_latest release debug run test

all: build

clean:
	@CID=$(shell docker ps -a | awk '{ print $$1 " " $$2 }' | grep $(NAME) | awk '{ print $$1 }'); if [ ! -z "$$CID" ]; then echo "Removing container which reference $(NAME)"; for container in $(CID); do docker rm -f $$container; done; fi;
	@if docker images $(NAME) | awk '{ print $$2 }' | grep -q -F $(VERSION); then docker rmi -f $(NAME):$(VERSION); fi
	@if docker images $(NAME) | awk '{ print $$2 }' | grep -q -F latest; then docker rmi -f $(NAME):latest; fi

build:
	docker build -t $(NAME):$(VERSION) --rm .

tag_latest:
	@docker tag $(NAME):$(VERSION) $(NAME):latest

release: build tag_latest
	docker push $(NAME)
	@echo "Create a tag v-$(VERSION)"
	@git tag v-$(VERSION)
	@git push origin v-$(VERSION)

debug:
	docker run -t -i -v$(PWD):/srv/ruby/lilypond:rw $(NAME):$(VERSION) /bin/bash -l

test:
	docker run -t -i -v$(PWD):/srv/ruby/lilypond:rw $(NAME):$(VERSION) gosu ruby:ruby rvm ruby-2.3 do lilypond ./test.ly

run:
	docker run $(NAME):$(VERSION)
