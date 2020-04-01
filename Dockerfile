from ruby:2.7

WORKDIR /app
COPY app /app

RUN chmod +x cli.rb

ENTRYPOINT ["ruby", "./cli.rb"]
