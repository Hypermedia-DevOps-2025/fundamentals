FROM mariadb:11.8@sha256:2bcbaec92bd9d4f6591bc8103d3a8e6d0512ee2235506e47a2e129d190444405

RUN apt-get update \
  && apt-get install -y mysql-client \
  && apt-get upgrade -y \
  && rm -rf /var/lib/apt/lists/*
