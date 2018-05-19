FROM alpine:3.7

# create directory for project
RUN mkdir src
WORKDIR src

# copy project
ADD . /src

EXPOSE 5000

CMD ["./glugut"]