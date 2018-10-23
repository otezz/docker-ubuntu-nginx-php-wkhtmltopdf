FROM otezz/ubuntu-nginx-php

MAINTAINER Seto Kuslaksono <kuslaksono@gmail.com>

RUN apt-get update && apt-get install -y xvfb libfontconfig wkhtmltopdf
