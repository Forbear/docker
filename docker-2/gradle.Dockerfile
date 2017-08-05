FROM sbeliakou/centos:7.2
MAINTAINER Daniil Silniahin (daniil_silniahin@epam.com)
ENV GRADLE_HOME /opt/gradle
ENV JAVA_HOME /usr/lib/jvm/java-1.8.0-openjdk-1.8.0.141-1.b16.el7_3.x86_64/jre
RUN     rpm --rebuilddb \
    &&  yum -y install java-devel \
    &&  yum -y install unzip \
    &&  yum -y install openssl
	&&	wget -O -ogradle.zip https://services.gradle.org/distributions/gradle-4.0.2-bin.zip \
    &&  unzip gradle.zip -d /opt/gradle \
    &&  rm gradle.zip \
    &&  yum clean all