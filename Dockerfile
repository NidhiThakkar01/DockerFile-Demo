From ubuntu:latest

LABEL description="Simple docker image for demo purpose"

RUN apt-get update &&\
	apt-get install -y maven \
	nodejs \
 	git

WORKDIR /app
RUN git clone https://github.com/NidhiThakkar01/simple-java-maven-app.git

ENV RANDOM_VAR="HELLO"

CMD ["bash"]

