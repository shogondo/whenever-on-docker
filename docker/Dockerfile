FROM ruby:3.1.3

RUN apt-get update -y && apt-get install -y cron
RUN mkdir /app
WORKDIR /app
COPY Gemfile /app/Gemfile
COPY Gemfile.lock /app/Gemfile.lock
RUN bundle install --path vendor/bundle
COPY ./app /app/app
COPY ./bin /app/bin
COPY ./config /app/config
COPY ./db /app/db
COPY ./lib /app/lib
COPY ./public /app/public
COPY ./config.ru /app/config.ru
COPY ./Rakefile /app/Rakefile
RUN bundle exec whenever --update-crontab
CMD ["cron", "-f"]
