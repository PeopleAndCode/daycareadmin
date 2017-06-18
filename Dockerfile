FROM ruby:2.4.0

COPY . /app/


RUN gem install bundler --no-ri --no-rdoc \
    && cd /app \
    && bundle install

# RUN chown -R nobody:nogroup /app
# USER nobody

WORKDIR /app

EXPOSE 3000

CMD ["bundle", "exec", "rackup", "--host", "0.0.0.0", "-p", "5000"]
