#origin dockerhub
from 164425/docker_es-7.9.0


#RUN apt install vim -y

COPY logging.yml /usr/share/elasticsearch/config
COPY elasticsearch.yml /usr/share/elasticsearch/config
ADD ./elastic-certificates.p12 /usr/share/elasticsearch/config
RUN chmod 777 -R /usr/share/elasticsearch/config/*
CMD ["/usr/share/elasticsearch/bin/elasticsearch"]
EXPOSE 9200 9300
