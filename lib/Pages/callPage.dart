import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:videocallapp/Screens/userAuth.dart';
import 'package:videocallapp/constant/constant.dart';
import 'package:zego_uikit_prebuilt_call/zego_uikit_prebuilt_call.dart';

final userID = Random().nextInt(99999);

class CallPage extends StatelessWidget{
  final String callId;
  final String name;
  const CallPage({super.key, required this.callId, required this.name});

  @override
  Widget build(BuildContext context) {
    return ZegoUIKitPrebuiltCall(
        appID: AppInfo.appID,
        appSign: AppInfo.appSign,
        callID: callId,
        userID: userID.toString(),
        userName: "UserName $name",
        config: ZegoUIKitPrebuiltCallConfig.oneOnOneVideoCall()
    );
  }
}

