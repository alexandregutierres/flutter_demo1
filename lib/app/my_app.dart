import 'package:agenda_crud/app/view/contact_form.dart';
import 'package:agenda_crud/app/view/contact_list.dart';
import 'package:flutter/material.dart';

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  static const ROTA_HOME = '/';
  static const ROTA_CONTACT_FORM = 'contact-form';

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      routes: {
        ROTA_HOME: (context) => ContactList(),
        ROTA_CONTACT_FORM: (context) => ContactForm()
      },
    );
  }
}
