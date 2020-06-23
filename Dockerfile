FROM golang:1.12

COPY src/bee-develop/ bee-develop/

ENV GO111MODULE=on
ENV GOFLAGS=-mod=vendor
ENV APP_USER app
ENV APP_HOME /go/src/go_projact_102

#ARG GROUP_ID
ENV GROUP_ID ${GROUP_ID:-1001}
#ARG USER_ID
ENV USER_ID ${USER_ID:-1001}

RUN groupadd --gid $GROUP_ID app && useradd -m -l --uid $USER_ID --gid $GROUP_ID $APP_USER
RUN mkdir -p $APP_HOME && chown -R $APP_USER:$APP_USER $APP_HOME

USER $APP_USER
WORKDIR $APP_HOME
EXPOSE 8010
CMD ["bee", "run"]
