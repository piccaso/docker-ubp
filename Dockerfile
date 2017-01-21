FROM node:6-wheezy

RUN curl -sS https://dl.yarnpkg.com/debian/pubkey.gpg | apt-key add - \
	&& echo "deb http://dl.yarnpkg.com/debian/ stable main" > /etc/apt/sources.list.d/yarn.list \
	&& apt-get update && DEBIAN_FRONTEND=noninteractive apt-get install -y yarn php5-cli \
	&& apt-get clean && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* 
	
