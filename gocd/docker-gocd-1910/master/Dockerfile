FROM gocd/gocd-server:v19.10.0

USER root
RUN apk update && apk add apache2-utils

ENV TINI_SUBREAPER=true
ADD custom-boot.sh /usr/local/bin/
CMD ["custom-boot.sh"]
