FROM jboss/wildfly
#RUN sed -i 's/#cron./cron./g' /etc/rsyslog.d/50-default.conf
#RUN /opt/jboss/wildfly/bin/add-user.sh admin Admin#70365 --silent
#ADD entrypoint.sh /opt/entrypoint.sh
#RUN chmod a+x /opt/entrypoint.sh
#ENTRYPOINT ["/opt/entrypoint.sh"]
#CMD ["/usr/sbin/apache2ctl", "-D", "FOREGROUND"]
ADD standalone.xml /opt/jboss/wildfly/standalone/configuration/standalone.xml
#RUN chmod a+r /opt/jboss/wildfly/standalone/configuration/standalone.xml
ENTRYPOINT ["/opt/jboss/wildfly/bin/standalone.sh"]
CMD ["-b", "0.0.0.0"]
