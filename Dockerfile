FROM cassandra:3.11

LABEL maintainer="awgreene"

RUN sed -i "s/authenticator:\ AllowAllAuthenticator/authenticator:\ PasswordAuthenticator/g" /etc/cassandra/cassandra.yaml

RUN sed -i "s/authorizer:\ AllowAllAuthorizer/authorizer:\ org.apache.cassandra.auth.CassandraAuthorizer/g" /etc/cassandra/cassandra.yaml

