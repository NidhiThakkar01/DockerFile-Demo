From ubuntu:latest
ARG ARG1="Hey"
LABEL description="Simple docker image for demo purpose"

RUN apt-get update &&\
	apt-get install -y maven \
	nodejs \
 	git

RUN git clone https://github.com/NidhiThakkar01/simple-java-maven-app.git

WORKDIR /simple-java-maven-app

ENV RANDOM_VAR=$ARG1

CMD ["bash"]

