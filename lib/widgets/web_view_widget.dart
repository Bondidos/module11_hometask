import 'dart:io';

import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

const String startUrl = 'https://www.epam.com';

class WebViewWidget extends StatefulWidget {
  const WebViewWidget({Key? key}) : super(key: key);

  @override
  State<WebViewWidget> createState() => _WebViewWidgetState();
}

class _WebViewWidgetState extends State<WebViewWidget> {

  @override
  void initState() {
    super.initState();
    if(Platform.isAndroid) WebView.platform = AndroidWebView();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("WebView"),
      ),
      body: const WebView(
        javascriptMode: JavascriptMode.disabled,
        initialUrl: startUrl,
      ),
    );
  }
}
