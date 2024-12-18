import 'package:flutter/material.dart';
import 'package:flex_responsive/flex_responsive.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flex Responsive Example',
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Flex Responsive Demo'),
        ),
        body: FlexResponsiveLayout(
          mobile: const Center(child: Text('Mobile Layout')),
          tablet: const Center(child: Text('Tablet Layout')),
          desktop: const Center(child: Text('Desktop Layout')),
        ),
      ),
    );
  }
}
