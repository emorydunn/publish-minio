FROM swift:5.3
MAINTAINER Emory Dunn <edunn@emorydunn.com>

RUN apt-get update
RUN apt-get install -y wget curl git-lfs

RUN wget https://dl.min.io/client/mc/release/linux-amd64/mc
RUN mv mc /usr/local/bin
RUN chmod +x /usr/local/bin/mc

RUN git clone https://github.com/JohnSundell/Publish.git
RUN cd Publish; git checkout 0.7.0; make
