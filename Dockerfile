FROM ubuntu

ADD install.sh .
RUN chmod +x install.sh && ./install.sh

RUN useradd -m code

ADD entrypoint.sh .
RUN chmod +x entrypoint.sh
ENTRYPOINT [ "/entrypoint.sh" ]

ADD configure.sh .
RUN chmod +x configure.sh && ./configure.sh

USER code

RUN /usr/lib/code-server/bin/code-server --install-extension MS-vsliveshare.vsliveshare
