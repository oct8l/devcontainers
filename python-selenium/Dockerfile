FROM python:slim-bookworm@sha256:96599df822d0e1c6bb700014a05c7f3c8cabc6e0f7ff3c4f9f69cee033b4b5d9

# Temporary: Upgrade python packages due to https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2022-40897 and https://github.com/advisories/GHSA-2mqj-m65w-jghx
# They are installed by the base image (python) which does not have the patch.
RUN python3 -m pip install --upgrade \
    'setuptools<=69.0.3' \
    'gitpython<=3.1.41'

# Install packages, remove imagemagick, symlink Chromium
RUN apt-get update && \
    apt-get install -y wget chromium unzip direnv && \
    # Remove imagemagick due to https://security-tracker.debian.org/tracker/CVE-2019-10131
    apt-get purge -y imagemagick imagemagick-6-common && \
    rm -rf /var/lib/apt/lists/* /var/log/dpkg.log /var/log/apt/*.log && \
    ln -s /usr/bin/chromium /usr/bin/google-chrome

# Install ChromeDriver and clean up
RUN CHROME_VERSION=$(chromium --version | cut -f 2 -d ' ') && \
    wget -q --continue -P /chromedriver "https://storage.googleapis.com/chrome-for-testing-public/$CHROME_VERSION/linux64/chromedriver-linux64.zip" && \
    unzip /chromedriver/chromedriver-linux64.zip -d /chromedriver && \
    cp /chromedriver/chromedriver-linux64/chromedriver /usr/local/bin &&\
    rm -rf /chromedriver

CMD sleep infinity
