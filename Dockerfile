FROM alpine:latest
LABEL CONTACT="https://github.com/jakkypan"
ENV FILE_NAME ./hello.txt
ENV PRINT_SHELL_FILE print.sh
COPY . /hello
WORKDIR /hello
RUN cat $FILE_NAME
CMD /bin/sh $PRINT_SHELL_FILE