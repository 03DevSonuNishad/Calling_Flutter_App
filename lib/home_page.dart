import 'package:flutter/material.dart';
import 'package:zego_uikit_prebuilt_call/zego_uikit_prebuilt_call.dart';
import 'dart:math' as math;

var appID = 1955471185;
var appSign = '4c5ef4cc9b477e91215dcb4d206b66fbcb239caffdb3ae54a74a44b443778929';

final String localUserID = math.Random().nextInt(10000).toString();

class HomePage extends StatefulWidget{
  @override
  State<HomePage> createState(){
    return _MyHomeState();
  }
}
class _MyHomeState extends State<HomePage>{
  TextEditingController callIDTextCtrl = TextEditingController();
  @override
  Widget build(BuildContext context){
    return Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Expanded(
                  child: TextField(
                    controller: callIDTextCtrl,
                    decoration:
                               const InputDecoration(labelText: "Join a call by id"),
                   ),
              ),
              ElevatedButton(
                  onPressed: (){
                    Navigator.push(
                        context,
                      MaterialPageRoute(builder: (context){
                        return CallPage(callID: callIDTextCtrl.text);
                      }),
                    );
                  },
                  child: const Text("join"),
              ),
            ],
          ),
        ),

    );
  }
}

class CallPage extends StatelessWidget{
  final String callID;

  const CallPage({
    Key? key,
    required this.callID,
  }):super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: ZegoUIKitPrebuiltCall(
        appID: appID, // your AppID,
        appSign: appSign,
        userID: localUserID,
        userName: 'user_$localUserID',
        callID: callID,
        config: ZegoUIKitPrebuiltCallConfig.oneOnOneVideoCall()/*..on = (context){*/
         /* Navigator.of(context).pop();
            },*/
        ),
    );
  }

}