FROM ortussolutions/commandbox:4.8.0

# Declared as ENV for clarity
ENV CONFIG_DIR /config

## Copy in our build / config file(s)
COPY ./build/cfml/config/ ${CONFIG_DIR}/

## Copy our app into the app dir. JSON configuration files stay outside of webroot
COPY ./app ${APP_DIR}

## Install our box.json dependencies.
WORKDIR $APP_DIR
RUN box install

WORKDIR $CONFIG_DIR
RUN mkdir -p /root/serverHome/WEB-INF/lucee-server/context/context/ortus/redis/ && \
  mv ortus.redis.license.properties /root/serverHome/WEB-INF/lucee-server/context/context/ortus/redis/license.properties && \
  touch .trial && \
  mv .trial /root/serverHome/WEB-INF/lucee-server/context/context/ortus/redis/.trial

# Warm up our server
RUN ${BUILD_DIR}/util/warmup-server.sh