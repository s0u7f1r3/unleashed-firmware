ARG distrib=debian:11
FROM $distrib

ARG user=builder
ARG branch=builder
ARG commit=origin/dev

ENV PATH = "${PATH}:/home/${user}/.local/bin"

RUN apt-get update && apt-get install -y curl wget vim git python3 python3-pip build-essential

RUN useradd -ms /bin/bash ${user}
ADD . /src
WORKDIR /src
RUN chown -R ${user}:${user} /src
USER ${user}

RUN python3 -m pip install pip --upgrade; python3 -m pip install -r scripts/requirements.txt

RUN git checkout --force -B $branch $commit && \
    git reset --hard && \
    git clean -ffdx && \
    git submodule update --init --recursive --force && \
    git submodule foreach git reset --hard && \
    git submodule foreach git clean -ffdx

RUN ./fbt; ./fbt COMPACT=1 DEBUG=0 updater_package
RUN tar czvf ./dist/flipper-z-f7-update-$(git rev-parse --short $commit).tgz dist/f7-C/f7-update-local/
