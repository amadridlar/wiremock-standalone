#FROM node:7-alpine
#MAINTAINER appbase.io <info@appbase.io>

#WORKDIR /dejavu
#
#RUN apk add --no-cache git

#RUN npm install -g bower
#RUN npm install -g http-server-fallback

#ADD . /dejavu

#RUN npm install
#RUN bower install --allow-root
#RUN npm run build

#EXPOSE 1358

#WORKDIR /dejavu/live

#RUN ln -s /dejavu/bundle .

#CMD [ "http-server", "-p 1358", "-f./" ]
#---------------------------------------

FROM rodolpheche/wiremock

ADD __files/* __files/
ADD mappings/* mappings/
