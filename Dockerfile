FROM ubuntu

RUN apt-get update
RUN apt-get install -y software-properties-common
RUN LC_ALL=C.UTF-8 add-apt-repository ppa:ondrej/php -y

RUN DEBIAN_FRONTEND=noninteractive apt-get install -y php5.6 php5.6-phpdbg php5.6-curl php5.6-mbstring php5.6-bcmath libfann-dev php5.6-dev php5.6-xml
RUN pecl install fann
RUN echo "extension=fann.so" >> /etc/php/5.6/cli/php.ini
