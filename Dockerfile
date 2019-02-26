FROM debian

RUN apt-get update && apt-get install -y python python-pip ipython firefox-esr 

RUN apt-key adv --keyserver keyserver.ubuntu.com --recv-keys 1397BC53640DB551
RUN echo "deb [arch=amd64] http://dl.google.com/linux/chrome/deb/ stable main" >> /etc/apt/sources.list
RUN apt-get update && apt-get install -y google-chrome-stable

RUN pip install selenium

ADD geckodriver /usr/bin 
ADD chromedriver /usr/bin

RUN chmod 755 /usr/bin/geckodriver
RUN chmod 755 /usr/bin/chromedriver

RUN apt-get install -y chromium-driver

RUN groupadd -g 1001 selenium && useradd -m -d /selenium -u 1001 -g selenium selenium 

WORKDIR /selenium

USER selenium

RUN [ /bin/bash ]
