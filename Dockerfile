FROM ruby:2.7.1-alpine
ENV BUNDLER_VERSION=2.1.4
RUN apk add --update --no-cache \
  binutils-gold \
  build-base \
  curl \
  file \
  g++ \
  gcc \
  git \
  less \
  libstdc++ \
  libffi-dev \
  libc-dev \ 
  linux-headers \
  libxml2-dev \
  libxslt-dev \
  libgcrypt-dev \
  make \
  netcat-openbsd \
  nodejs \
  openssl \
  pkgconfig \
  postgresql-dev \
  python \
  tzdata \
  yarn 
RUN gem install bundler -v 2.1.4
WORKDIR /kopi-tracker
COPY Gemfile Gemfile.lock ./
RUN bundle config build.nokogiri --use-system-libraries
RUN bundle check || bundle install
# COPY package.json yarn.lock ./
# RUN yarn install --check-files
COPY . ./
# Add a script to be executed every time the container starts.
COPY entrypoint.sh /usr/bin/
RUN chmod +x /usr/bin/entrypoint.sh
EXPOSE 3000 3001 3035 8080
ENTRYPOINT ["entrypoint.sh"]
