FROM yshurik/mxe-goqt:windows_64_shared
MAINTAINER yshurik <yshurik@gmail.com>

WORKDIR /mxe
RUN echo mark3
RUN git branch -a
RUN git pull
RUN git checkout gpgme
RUN export
RUN make MXE_TARGETS="$TARGETS" gpgme
RUN make MXE_TARGETS="$TARGETS" openal
RUN make MXE_TARGETS="$TARGETS" miniupnpc
RUN echo mark1
RUN git pull
RUN git checkout db4
RUN make MXE_TARGETS="$TARGETS" db4
