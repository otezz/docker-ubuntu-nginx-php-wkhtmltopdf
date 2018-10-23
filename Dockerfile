FROM otezz/ubuntu-nginx-php

MAINTAINER Seto Kuslaksono <kuslaksono@gmail.com>

RUN apt-get update && apt-get install -y xvfb libfontconfig wkhtmltopdf
# RUN curl -L https://github.com/wkhtmltopdf/wkhtmltopdf/releases/download/0.12.4/wkhtmltox-0.12.4_linux-generic-amd64.tar.xz -o wkhtmltox-0.12.4_linux-generic-amd64.tar.xz
# RUN tar xvf wkhtmltox-0.12.4_linux-generic-amd64.tar.xz
# RUN mv wkhtmltox/bin/wkhtmltopdf /usr/bin/
# RUN ln -nfs /usr/bin/wkhtmltopdf /usr/local/bin/wkhtmltopdf
# RUN rm -rf wkhtmltox*
RUN echo 'exec xvfb-run -a -s "-screen 0 640x480x16" wkhtmltopdf "$@"' | tee /usr/local/bin/wkhtmltopdf.sh >/dev/null && \
    chmod a+x /usr/local/bin/wkhtmltopdf.sh
