FROM centos:7

COPY grnoc7.repo /etc/yum.repos.d/

RUN yum -y install grnoc-telegraf net-snmp net-snmp-utils

ENTRYPOINT [ "/usr/bin/grnoc-telegraf"]
CMD [ "-config", "/etc/telegraf/grnoc/dummy.conf", "-config-directory", "/etc/telegraf/grnoc/conf.d" ]
