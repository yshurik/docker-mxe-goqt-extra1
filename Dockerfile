FROM yshurik/mxe-goqt:windows_64_shared
MAINTAINER yshurik <yshurik@gmail.com>

WORKDIR /mxe
RUN echo mark2
RUN git branch -a
RUN git pull
RUN git checkout gpgme
RUN export
RUN make MXE_TARGETS="$TARGETS" gpgme
RUN make MXE_TARGETS="$TARGETS" openal

