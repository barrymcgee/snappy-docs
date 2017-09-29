FROM ubuntu:xenial

RUN apt-get update && apt-get install --yes nginx

# Set git commit ID
ARG commit_id
ENV COMMIT_ID=$commit_id

# Copy over files
WORKDIR /srv
ADD _site .
ADD nginx.conf /etc/nginx/sites-enabled/default
RUN sed -i "s/~COMMIT_ID~/${COMMIT_ID}/" /etc/nginx/sites-enabled/default

STOPSIGNAL SIGTERM

CMD ["nginx", "-g", "daemon off;"]

