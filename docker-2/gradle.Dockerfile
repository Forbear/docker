FROM sbeliakou/centos:7.2
MAINTAINER Danii Silniahin (daniil_silniahin@epam.com)
RUN yum -y update \
    && yum -y install epel-release java-devel wget unzip \
    && wget https://services.gradle.org/distributions/gradle-3.4.1-bin.zip \
    && mkdir /opt/gradle \
    && unzip -d /opt/gradle gradle-3.4.1-bin.zip 
ENV PATH=/opt/gradle/gradle-3.4.1/bin:$PATH
ENV JAVA_HOME=/usr/lib/jvm/java-1.8.0-openjdk-1.8.0.141-1.b16.el7_3.x86_64
ENV GRADLE_VERSION 3.4.1
ENV GRADLE_HOME=/opt/gradle/gradle-3.4.1
CMD ["gradle", "-v"]