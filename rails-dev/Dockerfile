FROM ruby:4.0-slim-bookworm@sha256:ff110532f77ece9a77d75159600193852442509aa5f1314beb3c99dc4b3298b4

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
