FROM ubuntu:14.04

RUN apt-get update
RUN apt-get install -y bind9

ADD ./etc/bind /etc/bind

EXPOSE 53

CMD ["/usr/sbin/named","-u bind","-g"]