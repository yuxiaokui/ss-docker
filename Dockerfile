FROM python:2.7
RUN pip install shadowsocks
ADD ss.conf ss.conf
CMD  ["ssserver","-c","ss.conf"]
