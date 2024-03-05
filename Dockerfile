FROM registry.redhat.io/rhel8/httpd-24
USER 0
ADD index.html /tmp/src/index.html
RUN chown -R 1001:0 /tmp/src
USER 1001
RUN /usr/libexec/s2i/assemble
CMD /usr/libexec/s2i/ru
