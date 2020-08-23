FROM nextflowhubcontainers/base
MAINTAINER Shruti Sharma (@sharma-shruti)

#########
# commands
#########

#RUN 	conda install gcc -y
RUN 	apt update
RUN 	apt install gcc -y
RUN 	apt install wget unzip -y

RUN 	wget https://github.com/kvarq/kvarq/archive/master.zip && \
	unzip master.zip && \
	rm master.zip && \
	cd kvarq-master && \
	python setup.py test && \
	python setup.py install

CMD 	["kvarq"]

