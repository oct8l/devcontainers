FROM ruby:4.0-slim-bookworm@sha256:51dc3fabd6b34f3a12b54bdbe4f85e5b1800300c4c29483aecefc7eaa5430ed0

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
