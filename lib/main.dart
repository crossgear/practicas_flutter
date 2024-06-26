import 'package:flutter/material.dart';
import 'package:myapp/config/theme/app_theme.dart';
import 'package:myapp/presentation/screens/chat/chat_screen.dart';
 
void main() => runApp( const MyApp());
 
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Yes No App',
      debugShowCheckedModeBanner: false,
      theme: AppTheme(selectedColor: 2).theme(),
      home: const ChatScreen(),
      // home: Scaffold(
      //   appBar: AppBar(
      //     title: const Text('Yes No App Bar'),
      //   ),
      //   body: Center(
      //     child: FilledButton.tonal(
      //       onPressed: (){}, 
      //       child: const Text('Click me')),
      //   ),
      // ),
    );
  }
}
