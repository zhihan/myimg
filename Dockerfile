FROM ubuntu

MAINTAINER Zhi Han <zhi.han@gmail.com>

# Create a user called 'me', set password and add to sudoers
RUN adduser --home=/home/me me && \
  echo me:password | chpasswd && \
  adduser me sudo

# Install python3-pip
RUN apt-get update && apt-get -y install python3-pip

# Install coverage
RUN pip3 install pip --upgrade && pip3 install coverage

# Start the imae as 'me'
USER me
