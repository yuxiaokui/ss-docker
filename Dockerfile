FROM python:alpine
RUN pip install shadowsocks
ADD ss.conf ss.conf
CMD  ["sserver","-c","ss.conf"]
