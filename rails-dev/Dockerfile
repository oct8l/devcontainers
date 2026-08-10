FROM ruby:4.0-slim-bookworm@sha256:c5650da02325ecb3e7dd96e7074772c3ae2ecd093a9acf2cdbcf1a2fdc680726

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
