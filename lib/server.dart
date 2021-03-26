import 'package:packliste/src/generated/communication.pbgrpc.dart';
import 'package:grpc/grpc.dart' as grpc;

class Server {
  Future<void> main(List<String> args) async {
    final server = grpc.Server([PacklisteCommService()]);
    await server.serve(port: 8080);
    print('Server listening on port ${server.port}...');
  }
}

class PacklisteCommService extends PacklisteCommServiceBase {
  @override
  Future<Status> createPackliste(
      grpc.ServiceCall call, Packliste request) async {
    // TODO: implement createPackliste
    print(request.name);
    print(request.id);
    return Status(message: "Done", status: Status_Status.SUCCESS);
  }

  @override
  Future<Status> deletePackliste(grpc.ServiceCall call, Id request) {
    // TODO: implement deletePackliste
    throw UnimplementedError();
  }

  @override
  Future<Status> editPackliste(grpc.ServiceCall call, Packliste request) {
    // TODO: implement editPackliste
    throw UnimplementedError();
  }

  @override
  Future<Packliste> getPackliste(grpc.ServiceCall call, Id request) {
    // TODO: implement getPackliste
    throw UnimplementedError();
  }

  @override
  Stream<Packliste> getPacklisten(grpc.ServiceCall call, Empty request) {
    // TODO: implement getPacklisten
    throw UnimplementedError();
  }
}
