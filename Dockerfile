FROM python:alpine
RUN pip install shadowsocks
ADD ss.conf ss.conf
CMD  ["ssserver","-c","ss.conf"]
