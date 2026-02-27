FROM ubuntu:latest

EXPOSE 8000

WORKDIR /app

ENV HOST=localhost DBPORT=5432

ENV USER=root PASSWORD=root DBNAME=root

COPY --chmod=764 ./main main

COPY ./templates/ templates/

CMD [ "./main" ]
