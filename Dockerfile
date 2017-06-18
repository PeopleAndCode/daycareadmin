FROM ruby:2.4.0-slim

COPY . /app/


RUN gem install bundler --no-ri --no-rdoc \
    && cd /app \
    && bundle install

RUN chown -R nobody:nogroup /app
USER nobody

EXPOSE 3000
WORKDIR /app


