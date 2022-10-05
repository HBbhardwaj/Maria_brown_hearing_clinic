

import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:salesiq_mobilisten/salesiq_mobilisten.dart';

class HearingButlerController extends GetxController{


  @override
  void onInit() {
    super.onInit();

    initZohoChat();


  }


  ///---- zoho chat initialize ----///
  void initZohoChat(){

    ZohoSalesIQ.eventChannel.listen((event) {
      switch (event["eventName"]) {
        case SIQEvent.chatOpened:
          var chatDetails = event["chat"];
          // your code to handle event
          debugPrint("here zoho chat open====> $chatDetails");

          break;
        case SIQEvent.chatClosed:
          var chatDetails = event["chat"];
          // your code to handle event
          debugPrint("here zoho chat close====> $chatDetails");
          break;
        case SIQEvent.chatAttended:
          var chatDetails = event["chat"];
          // your code to handle event
          debugPrint("here zoho chat attended ====> $chatDetails");
          break;
        case SIQEvent.chatMissed:
          var chatDetails = event["chat"];
          // your code to handle event
          debugPrint("here zoho chat missed====> $chatDetails");
          break;
        case SIQEvent.chatReopened:
          var chatDetails = event["chat"];
          // your code to handle event
          debugPrint("here zoho chat reopened====> $chatDetails");
          break;
        case SIQEvent.chatRatingReceived:
          var chatDetails = event["chat"];
          // your code to handle event
          debugPrint("here zoho chat rating received====> $chatDetails");
          break;
        case SIQEvent.chatFeedbackReceived:
          var chatDetails = event["chat"];
          // your code to handle event
          debugPrint("here zoho chat feedback received====> $chatDetails");
          break;
        case SIQEvent.chatQueuePositionChange:
          var chatDetails = event["chat"];
          // your code to handle event
          debugPrint("here zoho chat queue position ====> $chatDetails");
          break;
        case SIQEvent.performChatAction:
          var actionDetails = event["chatAction"];
          // your code to handle event
          debugPrint("here zoho chat action====> $actionDetails");
          break;
        case SIQEvent.chatUnreadCountChanged:
          var unreadCount = event["unreadCount"];
          // your code to handle event
          debugPrint("here zoho chat unread====> $unreadCount");
          break;
      }
    });
  }


  ///----- zoho start chat ---///
  void startZohoChat(){
      ZohoSalesIQ.startChat("Here start zoho chat");
  }




  @override
  void dispose() {
    super.dispose();

  }



}