FROM equator11111/dart as base
COPY bin/test.dart /root
RUN "/usr/lib/dart/bin/dart2native" "/root/test.dart"
RUN "ls"
#FROM ubuntu
#COPY --from=base /root/test.exe /root
#ENTRYPOINT "/root/test.exe"
#ENTRYPOINT "/usr/lib/dart/bin/dart" "/root/test.dart"
