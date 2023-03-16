import 'package:grpc/grpc.dart';
import 'export_warikan_protos.dart';

void main() async {
  print("star main.");
  await grpcFunc();
}

Future<void> grpcFunc() async {
  print("Start.");
  final grpcChannel = ClientChannel(
    'suwageeks.org',
    port: 50000,
    options: const ChannelOptions(
      // TLS を無効にする
      credentials: ChannelCredentials.insecure(),
    ),
  );

  print("connected.");
  final stub = WarikanClient(grpcChannel);

  final myself = User(id: 10, name: "Hello");

  try {
    final response = await stub.getItemsList(
      GetItemsListRequest()..bill = Bill(
        id: "cb30b1fc-86d0-461b-9288-a85833603972",
        password: "Hello",
        host: myself,
        guests: [myself]
      ),
    );
    print('Response from serve: ${response.count}');
  } catch(e) {
    print('Caught error: $e');
  }
  await grpcChannel.shutdown();
}
