FROM i386/ubuntu:focal

COPY ./chal /chal

RUN apt update && \
apt install -y socat python3 && \
apt clean && \
chmod -R 555 /chal

WORKDIR /chal

USER nobody

CMD ["./run.sh"]
