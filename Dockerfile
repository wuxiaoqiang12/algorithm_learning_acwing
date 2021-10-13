From alpine

WORKDIR /root

RUN apk update && apk upgrade && apk add perl curl fontconfig gnupg git make

RUN wget -qO- https://raw.githubusercontent.com/wuxiaoqiang12/algorithm_learning_acwing/main/.github/workflows/install-TinyTeX_algBook.sh | sh

RUN cd /root/bin && ls /root/.TinyTeX/bin/x86_64-linuxmusl/* | xargs -n 1 ln -s -f

RUN mkdir /home/runner

ENV PATH="/root/bin:/root/.TinyTeX/bin/x86_64-linuxmusl:${PATH}"
WORKDIR /home/runner
VOLUME ["/home/runner"]

RUN wget -qO- https://raw.githubusercontent.com/wuxiaoqiang12/algorithm_learning_acwing/main/.github/workflows/install-font.sh | sh