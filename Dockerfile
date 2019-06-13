FROM daocloud.io/xiaochengong/docker-matlab-config
MAINTAINER xiaochengong <xiaochengong@126.com>
RUN apt-get -y install git
RUN mkdir -p /script
RUN cd /script && git clone https://github.com/Xin-cqu/test_docker.git
ADD test /root/matlab_script/test
RUN chmod 777 -R /root/matlab_script/
ENTRYPOINT ["/root/matlab_script/test"]
