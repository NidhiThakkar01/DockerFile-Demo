From ubuntu:latest

LABEL description="Simple docker iage for demo purpose"

RUN apt-get update &&\
	apt-get install -y maven \
	nodejs

ENV RANDOM_VAR="HELLO"

CMD ["bash"]

