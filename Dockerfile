FROM sphinxdoc/sphinx:6.2.1

LABEL "maintainer"="Ammar Askar <ammar@ammaraskar.com>"

# Install Java
RUN apt update
RUN apt install -y default-jdk

ADD entrypoint.py /entrypoint.py
ADD sphinx_action /sphinx_action

ENTRYPOINT ["/entrypoint.py"]
