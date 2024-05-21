FROM sphinxdoc/sphinx:6.2.1

LABEL "maintainer"="Ammar Askar <ammar@ammaraskar.com>"

# Install Java
RUN apt-get update && \
    apt-get install -y openjdk-21-jdk && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/*

ADD entrypoint.py /entrypoint.py
ADD sphinx_action /sphinx_action

ENTRYPOINT ["/entrypoint.py"]
