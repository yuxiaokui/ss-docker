FROM python:2.7-alpine
RUN pip install shadowsocks
RUN sed -i 's/cleanup/reset/g' /usr/local/lib/python2.7/site-packages/shadowsocks/crypto/openssl.py
ADD ss.conf ss.conf
CMD  ["ssserver","-c","ss.conf"]
