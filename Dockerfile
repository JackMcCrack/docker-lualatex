FROM alpine:latest
MAINTAINER Ansgar Sonntag <jobs@ansgarsonntag.de> 

RUN apk update && apk add --no-cache texlive-full
RUN mkdir -p /usr/share/fonts/local
COPY fonts/* /usr/share/fonts/local 
RUN fc-cache -fv

WORKDIR /CV
CMD make build
