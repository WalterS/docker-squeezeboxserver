FROM centos:7

MAINTAINER Walter S.

RUN yum -y install git perl-Time-HiRes perl-CGI perl-YAML perl-Digest-MD5
RUN yum -y upgrade
RUN yum -y install http://downloads.slimdevices.com/LogitechMediaServer_v7.8.0/logitechmediaserver-7.8.0-1.noarch.rpm
RUN ln -s /usr/lib/perl5/vendor_perl/Slim /usr/lib64/perl5/
RUN su - squeezeboxserver -s /bin/bash -c "/usr/libexec/squeezeboxserver --daemon --prefsdir=/var/lib/squeezeboxserver/prefs --logdir=/var/log/squeezeboxserver --cachedir=/var/lib/squeezeboxserver/cache --charset=utf8" || true
