FROM otezz/ubuntu-nginx-php

MAINTAINER Seto Kuslaksono <kuslaksono@gmail.com>

RUN apt-get update && apt-get install -y xvfb libfontconfig wkhtmltopdf

RUN echo 'exec xvfb-run -a -s "-screen 0 640x480x16" wkhtmltopdf "$@"' | tee /usr/local/bin/wkhtmltopdf.sh >/dev/null && \
    chmod a+x /usr/local/bin/wkhtmltopdf.sh
