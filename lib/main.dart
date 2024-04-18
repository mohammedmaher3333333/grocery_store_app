import 'package:flutter/services.dart';
import 'package:grocery_store_app/core/app/env.variables.dart';

import 'firebase_options.dart';
import 'package:flutter/material.dart';
import 'grocery_store_app.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_auth/firebase_auth.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await EnvVariable.instance.init(envType: EnvTypeEnum.dev);



  await Firebase.initializeApp(
   options: DefaultFirebaseOptions.currentPlatform,
  );

  await SystemChrome.setPreferredOrientations(
    [DeviceOrientation.portraitDown, DeviceOrientation.portraitUp],
  ).then((_) {
    runApp(const GroceryStoreApp());
  });
}
