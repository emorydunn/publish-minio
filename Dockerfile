FROM swift:5.2
MAINTAINER Emory Dunn <edunn@emorydunn.com>

RUN apt-get update
RUN apt-get install -y wget curl git-lfs

RUN wget https://dl.min.io/client/mc/release/linux-amd64/mc
RUN mv mc /usr/local/bin
RUN chmod +x /usr/local/bin/mc