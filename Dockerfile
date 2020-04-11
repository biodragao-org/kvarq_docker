FROM abhi18av/biodragao_base
MAINTAINER Abhinav Sharma (@abhi18av)

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

