From ubuntu:latest

LABEL description="Simple docker iage for demo purpose"

RUN apt-get update &&\
	apt-get install -y maven \
	git


RUN mvn --version

RUN git clone https://github.com/NidhiThakkar01/simple-java-maven-app

ENV RANDOM_VAR="HELLO"

CMD ["bash"]

