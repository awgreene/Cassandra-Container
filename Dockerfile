FROM cassandra:3.11

COPY ./cassandra.yaml /etc/cassandra/cassandra.yaml

CMD ["cassandra", "-f"]
