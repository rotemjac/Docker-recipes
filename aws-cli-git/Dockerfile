FROM amazonlinux:2 as installer
ARG EXE_FILENAME=awscliv2.zip

RUN curl "https://awscli.amazonaws.com/awscli-exe-linux-x86_64.zip" -o $EXE_FILENAME

RUN yum update -y \
  && yum install -y unzip \
  && unzip $EXE_FILENAME \
  # The --bin-dir is specified so that we can copy the
  # entire bin directory from the installer stage into
  # into /usr/local/bin of the final stage without
  # accidentally copying over any other executables that
  # may be present in /usr/local/bin of the installer stage.
  && ./aws/install --bin-dir /aws-cli-bin/


FROM amazonlinux:2
RUN yum update -y \
  && yum install -y less groff \
  && yum clean all \
  && yum install -y git

COPY --from=installer /usr/local/aws-cli/ /usr/local/aws-cli/
COPY --from=installer /aws-cli-bin/ /usr/local/bin/

# Set user and group
ARG user=appuser
ARG group=appuser
ARG uid=1000
ARG gid=1000
RUN groupadd -g ${gid} ${group}
RUN useradd -u ${uid} -g ${group} -s /bin/sh -m ${user} # <--- the '-m' create a user home directory

# Switch to user
USER ${uid}:${gid}

WORKDIR /home/${user}