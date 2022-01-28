FROM debian:bullseye-slim

RUN apt-get update
RUN apt-get upgrade -y

RUN apt-get install git -y

WORKDIR /workspace
COPY . .

RUN chmod +x entrypoint.sh

ENTRYPOINT ["./entrypoint.sh"]
