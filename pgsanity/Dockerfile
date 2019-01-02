FROM alpine:3.8
RUN apk add --no-cache postgresql-dev
VOLUME /project
WORKDIR /project
ENTRYPOINT ["ecpg"]