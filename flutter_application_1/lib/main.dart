import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'package:yes_no_app_210077/config/theme/app_theme.dart';
import 'package:yes_no_app_210077/persentation/screens/chat/chast_screen.dart';
import 'package:yes_no_app_210077/persentation/providers/chat_provider.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => ChatProvider() )
      ],
      child: MaterialApp(
        title: 'Yes No App',
        debugShowCheckedModeBanner: false,
        theme: AppTheme( selectedColor: 0 ).theme(),
        home: const ChastScreen()
      ),
    );
  }
}