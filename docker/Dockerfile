FROM pytorch/pytorch:1.2-cuda10.0-cudnn7-runtime

ARG GID
ARG GROUPNAME
ARG UID
ARG USERNAME

RUN useradd -m -u $UID -g $GID -o -s /bin/bash $USERNAME

USER $USERNAME

CMD /bin/bash
