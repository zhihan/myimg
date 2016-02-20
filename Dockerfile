FROM ubuntu

MAINTAINER Zhi Han <zhi.han@gmail.com>

# Create a user called 'me', set password and add to sudoers
RUN useradd me && \
  echo me:password | chpasswd && \
  adduser me sudo

# Start the imae as 'me'
USER me
