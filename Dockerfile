FROM equator11111/dart as base
WORKDIR /app
ADD pubspec.* /app/
RUN pub get
ADD bin /app/bin/
ADD lib /app/lib/
RUN pub get --offline
RUN "/usr/lib/dart/bin/dart2native" "/app/bin/main.dart -o /app/server"
#COPY bin/test.dart /root
#RUN "/usr/lib/dart/bin/dart2native" "/root/test.dart"
#RUN "ls"

FROM ubuntu
COPY --from=base /app/server /root
ENTRYPOINT "/root/server"
#ENTRYPOINT "/usr/lib/dart/bin/dart" "/root/test.dart"
