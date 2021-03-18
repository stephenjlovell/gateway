FROM ruby:3.0.0 AS builder

WORKDIR /usr/src/app
COPY . .

# 1st stage
RUN apt-get update \
    && apt-get install -y --no-install-recommends \
       postgresql-client \
    && apt-get clean \
    && rm -rf /var/lib/apt/lists/*_* \
    # # installs gems with source and compiled exensions in WORKDIR
    # && bundle install --deployment
    && bundle install

# 2nd stage: get rid of image bloat
# FROM ruby:3.0.0-slim
# COPY --from=builder /usr/src/app /usr/src/app

EXPOSE 3000

CMD ["rails", "server", "-b", "0.0.0.0"]