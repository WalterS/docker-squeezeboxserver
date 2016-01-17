FROM centos:7

MAINTAINER Walter S.

RUN yum -y install git perl-Time-HiRes perl-CGI perl-YAML perl-Digest-MD5
RUN yum -y upgrade
RUN yum -y install http://downloads.slimdevices.com/LogitechMediaServer_v7.8.0/logitechmediaserver-7.8.0-1.noarch.rpm
RUN ln -s /usr/lib/perl5/vendor_perl/Slim /usr/lib64/perl5/
COPY ./bin/run_server /usr/local/bin/

VOLUME ['/mnt/state']
EXPOSE 3483 9000 9090

CMD /usr/local/bin/run_server
