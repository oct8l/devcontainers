FROM mcr.microsoft.com/devcontainers/python:1-3.12-bullseye

# Set the working directory
WORKDIR /app/

# Install required Python packages
RUN pip install --upgrade --no-cache-dir selenium gspread oauth2client

# Install Chromium
RUN apt-get update && \
    apt-get install -y wget chromium unzip && \
    rm -rf /var/lib/apt/lists/* /var/log/dpkg.log /var/log/apt/*.log && \
    ln -s /usr/bin/chromium /usr/bin/google-chrome

# Install ChromeDriver and clean up
RUN CHROME_VERSION=$(chromium --version | cut -f 2 -d ' ') && \
    wget -q --continue -P /chromedriver "https://storage.googleapis.com/chrome-for-testing-public/$CHROME_VERSION/linux64/chromedriver-linux64.zip" && \
    unzip /chromedriver/chromedriver-linux64.zip -d /chromedriver && \
    cp /chromedriver/chromedriver-linux64/chromedriver /usr/local/bin &&\
    rm -rf /chromedriver

CMD sleep infinity
