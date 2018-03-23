FROM node:8

RUN wget -q -O - https://dl-ssl.google.com/linux/linux_signing_key.pub | apt-key add -
RUN echo "deb http://dl.google.com/linux/chrome/deb/ stable main" >> /etc/apt/sources.list.d/google.list

RUN apt-get update && apt-get install -y xvfb google-chrome-stable
RUN npm install -g protractor && webdriver-manager update

COPY run-protractor.sh /bin/

VOLUME ["/project"]

ENTRYPOINT ["/bin/run-protractor.sh"]
