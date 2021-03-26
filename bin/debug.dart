import 'package:recharge/recharge.dart';
import 'main.dart' as real_main;

var recharge = Recharge(path: '../');
Future<void> main(List<String> args) async {
  await recharge.init();
  await real_main.main(args);
}
