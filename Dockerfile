FROM centos:7

ARG ver=1.1.0

COPY grnoc7.repo /etc/yum.repos.d/

RUN yum -y install grnoc-telegraf-${ver} net-snmp net-snmp-utils

ENTRYPOINT [ "/usr/bin/grnoc-telegraf"]
CMD [ "-config", "/etc/telegraf/grnoc/dummy.conf", "-config-directory", "/etc/telegraf/grnoc/conf.d" ]
