FROM jetty

ARG WAR_PATH
ADD ${WAR_PATH} /var/lib/jetty/webapps/ROOT.war
EXPOSE 8080
