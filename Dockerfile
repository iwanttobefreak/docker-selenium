FROM debian

#docker run --rm -d -e DISPLAY=$DISPLAY -v /tmp/.X11-unix:/tmp/.X11-unix <docker_image_selenium>

RUN export uid=1000 gid=1000 && \
    mkdir -p /selenium && \
    echo "selenium:x:${uid}:${gid}:Selenium,,,:/selenium:/bin/bash" >> /etc/passwd && \
    echo "selenium:x:${uid}:" >> /etc/group && \
    chown ${uid}:${gid} -R /selenium

RUN apt-get update && apt-get install -y gpg python3 python3-pip ipython3 firefox-esr

RUN apt-key adv --keyserver keyserver.ubuntu.com --recv-keys 1397BC53640DB551
RUN echo "deb [arch=amd64] http://dl.google.com/linux/chrome/deb/ stable main" >> /etc/apt/sources.list

RUN apt-get update && apt-get install -y google-chrome-stable chromium-driver

RUN pip3 install selenium

ADD geckodriver /usr/bin 
ADD chromedriver /usr/bin

RUN chmod 755 /usr/bin/geckodriver
RUN chmod 755 /usr/bin/chromedriver

WORKDIR /selenium

USER selenium

RUN [ /bin/bash ]
