FROM phusion/baseimage:0.9.8
MAINTAINER Simon Kohlmeyer <simon.kohlmeyer@gmail.com>

# Install Java
RUN apt-get install -y python-software-properties
RUN add-apt-repository -y ppa:webupd8team/java
RUN apt-get update
RUN echo debconf shared/accepted-oracle-license-v1-1 select true | debconf-set-selections
RUN echo debconf shared/accepted-oracle-license-v1-1 seen true | debconf-set-selections
RUN apt-get install -y oracle-java7-installer

# Install youtrack
WORKDIR /home/youtrack
RUN wget -nv http://download.jetbrains.com/charisma/youtrack-5.1.jar -O /youtrack.jar

ADD ./etc /etc
# Set all files root:root manually until https://github.com/dotcloud/docker/issues/3950 is fixed
RUN bash -c 'chown root: /etc/{,service/{,youtrack/{,run}}}'

ADD ./ssh_pubkey /tmp/ssh_pubkey
RUN cat /tmp/ssh_pubkey >> /root/.ssh/authorized_keys && rm -f /tmp/ssh_pubkey
RUN chmod 600 /root/.ssh/authorized_keys

EXPOSE 80

CMD ["/sbin/my_init"]
