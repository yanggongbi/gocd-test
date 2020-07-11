FROM openjdk:8

ENV ANT_VERSION=1.9.4
ENV ANT_HOME=/opt/ant

RUN wget --no-check-certificate --no-cookies http://archive.apache.org/dist/ant/binaries/apache-ant-${ANT_VERSION}-bin.tar.gz && \
    tar -zxf apache-ant-${ANT_VERSION}-bin.tar.gz -C /opt/ && \
    ln -s /opt/apache-ant-${ANT_VERSION} /opt/ant && \
    rm -f apache-ant-${ANT_VERSION}-bin.tar.gz

ENV PATH ${PATH}:/opt/ant/bin

VOLUME /scripts
VOLUME /workdir

ENTRYPOINT ["/bin/bash", "/scripts/run_build.sh"]
