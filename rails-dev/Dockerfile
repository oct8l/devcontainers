FROM ruby:3.4-slim-bookworm@sha256:fdadeae7d74a179b236dc991a43958c5f09545569d0d8df89051d14f9ee40c15

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
