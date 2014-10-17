FROM ubuntu

RUN apt-get update
RUN apt-get install openjdk-7-jre-headless -y
RUN apt-get install wget -y

RUN wget https://download.elasticsearch.org/elasticsearch/elasticsearch/elasticsearch-1.3.4.deb
RUN dpkg -i elasticsearch-1.3.4.deb

ADD run /usr/local/bin/run
RUN chmod +x /usr/local/bin/run

EXPOSE 9200

CMD ["/usr/local/bin/run"]
