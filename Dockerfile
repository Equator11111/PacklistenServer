FROM equator11111/dart as base
WORKDIR /app
ADD pubspec.* /app/
RUN "/usr/lib/dart/bin/pub" "get"
ADD bin /app/bin/
ADD lib /app/lib/
RUN "/usr/lib/dart/bin/pub" "get" "--offline"
RUN "/usr/lib/dart/bin/dart2native" "/app/bin/main.dart -o /app/server"

FROM ubuntu
COPY --from=base /app/server /server
ENTRYPOINT "/server"