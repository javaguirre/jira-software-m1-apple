FROM ubuntu:latest
WORKDIR /home
RUN apt update
RUN apt --assume-yes install openjdk-11-jdk curl
RUN mkdir -p downloads
RUN cd downloads
RUN mkdir -p jirahome
RUN curl https://product-downloads.atlassian.com/software/jira/downloads/atlassian-jira-software-9.2.0.tar.gz --output atlassian-jira-software-9.2.0.tar.gz
RUN tar -xvf atlassian-jira-software-9.2.0.tar.gz
ENV JIRA_HOME=/home/downloads/jirahome
CMD ["atlassian-jira-software-9.2.0-standalone/bin/start-jira.sh", "-fg"]
