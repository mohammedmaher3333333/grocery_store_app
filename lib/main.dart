import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:grocery_store_app/core/app/bloc_observer.dart';
import 'package:grocery_store_app/core/app/env.variables.dart';
import 'package:grocery_store_app/core/di/injection_container.dart';
import 'package:grocery_store_app/core/service/shared_pref/shared_pref.dart';

import 'firebase_options.dart';
import 'package:flutter/material.dart';
import 'grocery_store_app.dart';
import 'package:firebase_core/firebase_core.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await EnvVariable.instance.init(envType: EnvTypeEnum.dev);



  await Firebase.initializeApp(
   options: DefaultFirebaseOptions.currentPlatform,
  );

  await SharedPref().instantiatePreferences();

  await setupInjector();

  Bloc.observer= AppBlocObserver();

  await SystemChrome.setPreferredOrientations(
    [DeviceOrientation.portraitDown, DeviceOrientation.portraitUp],
  ).then((_) {
    runApp(const GroceryStoreApp());
  });
}
