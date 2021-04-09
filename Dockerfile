FROM equator11111/dart as base
WORKDIR /app
ADD pubspec.* /app/
ADD /mysql1 /app/mysql1
RUN "/usr/lib/dart/bin/pub" "get"
ADD bin /app/bin/
ADD lib /app/lib/
RUN "/usr/lib/dart/bin/pub" "get" "--offline"
RUN "ls" "/app/bin"
RUN "/usr/lib/dart/bin/dart" "compile" "exe" "bin/main.dart" "-o" "server"

FROM ubuntu
COPY --from=base /app/server /server
ADD /config /config
EXPOSE 9090
ENTRYPOINT "/server"