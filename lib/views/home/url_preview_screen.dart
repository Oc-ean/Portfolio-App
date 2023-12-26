import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

class UrlPreviewScreen extends StatefulWidget {
  final String url;
  final String text;
  const UrlPreviewScreen({super.key, required this.url, required this.text});

  @override
  State<UrlPreviewScreen> createState() => _UrlPreviewScreenState();
}

class _UrlPreviewScreenState extends State<UrlPreviewScreen> {
  bool _isLoading = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: const Icon(
            Icons.arrow_back_outlined,
            color: Colors.white,
          ),
        ),
        title: Text(
          widget.text,
          style: const TextStyle(color: Colors.white),
        ),
        backgroundColor: Colors.transparent,
        elevation: 0.0,
      ),
      body: Stack(
        children: [
          WebView(
            backgroundColor: Theme.of(context).cardColor,
            initialUrl: widget.url,
            javascriptMode: JavascriptMode.unrestricted,
            onPageFinished: (String url) {
              setState(() {
                _isLoading = false;
              });
            },
          ),
          if (_isLoading)
            const Center(
              child: CircularProgressIndicator(),
            ),
        ],
      ),
    );
  }
}
