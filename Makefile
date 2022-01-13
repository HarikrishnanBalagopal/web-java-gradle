tom:
	docker run --rm -it -v "${PWD}:/root/code" -w /root/code -p 8080:8080 tomcat:10-jdk8-corretto bash

java:
	docker run --rm -it -v "${PWD}:/home/code" java:8-jdk bash
