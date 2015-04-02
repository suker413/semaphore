FROM iojs:1.6.3

ENV NODE_ENV production

ADD . /usr/src/app/
WORKDIR /usr/src/app/

RUN npm install
RUN bower install
CMD ["node", "/usr/src/app/bin/semaphore"]

EXPOSE 80