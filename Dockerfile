FROM iron/go:1.7

COPY ./testch /app/
ADD conf/app.conf /app/conf/app.conf

WORKDIR /app

ENTRYPOINT ["./testch"]