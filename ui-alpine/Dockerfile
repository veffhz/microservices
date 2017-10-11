FROM alpine:3.5

RUN apk update && apk upgrade && apk add --no-cache make g++ ruby ruby-dev && \
	gem install unf_ext --no-ri --no-rdoc && \
	apk add ruby-bundler && \
    rm -rf /var/cache/apk/*

ENV APP_HOME /app
RUN mkdir $APP_HOME
WORKDIR $APP_HOME
ADD Gemfile* $APP_HOME/
RUN bundle install
ADD . $APP_HOME
ENV POST_SERVICE_HOST post
ENV POST_SERVICE_PORT 5000
ENV COMMENT_SERVICE_HOST comment
ENV COMMENT_SERVICE_PORT 9292
CMD ["puma"]
