import 'package:grpc/grpc.dart';
import 'export_fairtreat_protos.dart';

void main() async {
  print("star main.");
  await grpcFunc();
}

Future<void> grpcFunc() async {
  print("Start.");
  final grpcChannel = ClientChannel(
    'suwageeks.org',
    port: 50001,
    options: const ChannelOptions(
      // TLS を無効にする
      credentials: ChannelCredentials.insecure(),
    ),
  );

  print("connected.");
  final stub = FairTreatClient(grpcChannel);

  final myself = User(id: 10, name: "Hello");

  try {
    final response = await stub.createBill(
      CreateBillRequest()
        ..hostName = "yuuta",
    );
    print('Response from serve: ${response.host.name}');
  } catch(e) {
    print('Caught error: $e');
  }
  await grpcChannel.shutdown();
}
