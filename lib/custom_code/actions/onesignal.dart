// Automatic FlutterFlow imports
import '/backend/schema/structs/index.dart';
import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom actions
import '/flutter_flow/custom_functions.dart'; // Imports custom functions
import 'package:flutter/material.dart';
// Begin custom action code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

// Set your action name, define your arguments and return parameter,
// and then add the boilerplate code using the green button on the right!

import 'package:onesignal_flutter/onesignal_flutter.dart';

Future onesignal(String externalid) async {
  // Add your function code here!
  try {
    var oneSignalUserId = await OneSignal.User.getOnesignalId();

    if (oneSignalUserId == null) {
      // Device not registered, create new user
      await OneSignal.login(externalid);
      print("Created new user with external ID: $externalid");
    }
  } catch (error) {
    print("Error during OneSignal operation: $error");
    // Handle the error appropriately (e.g., show a message to the user, log it, etc.)
  }
}
