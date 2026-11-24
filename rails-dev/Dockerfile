FROM ruby:4.0-slim-bookworm@sha256:5ac6b9f959a3356af5fc4f6a80a30106d99fd51785633f8a365be73cbe84e199

# Install essential packages
RUN apt-get update && apt-get install -y \
    build-essential \
    git \
    libpq-dev \
    postgresql-client \
    nodejs \
    npm \
    yarn \
    direnv \
    && rm -rf /var/lib/apt/lists/* /var/log/dpkg.log /var/log/apt/*.log

# Install latest bundler
RUN gem install bundler

# Set working directory
WORKDIR /workspace

# Set default command
CMD sleep infinity
