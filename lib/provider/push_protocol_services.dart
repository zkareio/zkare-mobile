import 'package:flutter/material.dart';

class PushProtocolHelperService extends ChangeNotifier {
  var pushProto;

  get signer => null;

  get env => null;

  // initialize the Push Protocol
  init() {
    pushProto = PushAPI.initialize(signer, {
      env: 'staging',
    });
  }

  fetchMessages() async {
    // ignore: unused_local_variable
    var fetch = await pushProto.notification.list();
  }

  sendNotification(String title, String body) async {
    var sendNotifRes = await pushProto.channel.send([
      '*'
    ], {
      "notification": {
        "title": title,
        "body": body,
      }
    });
  }
}

class PushAPI {
  static initialize(signer, Map<dynamic, String> map) {}
}
