import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';
import 'package:webview_flutter/webview_flutter.dart';

void main() {
  runApp(const MaterialApp(home: MyApp()));
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  final webViewController = WebViewController()
    ..loadRequest(Uri.parse('https://www.cnn.com/2024/06/25/politics/special-counsel-mar-a-lago-documents-trump/index.html'));

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Flutter WebView"),
        ),
        body: WebViewWidget(controller: webViewController));
  }
}