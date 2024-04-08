import 'dart:io';

import 'package:flutter/material.dart';
import 'grocery_store_app.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_auth/firebase_auth.dart';

void main()async {
  WidgetsFlutterBinding.ensureInitialized();
  Platform.isAndroid?
  await Firebase.initializeApp(
   options: const FirebaseOptions(apiKey: 'AIzaSyD5d6xvmgxf7RjppHyg8SRC_4zla9kEcwo',
       appId: '1:252526625716:android:173588be24f3f3c041a8e1',
       messagingSenderId: '252526625716', projectId: 'grocerystore-6a49c')
  )
      : await Firebase.initializeApp();

  runApp(const GroceryStoreApp());
}
