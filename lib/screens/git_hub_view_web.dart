import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

class GitHubWebView extends StatefulWidget {
  final String url;

  const GitHubWebView({super.key, required this.url});

  @override
  State<GitHubWebView> createState() => _GitHubWebViewState();
}

class _GitHubWebViewState extends State<GitHubWebView> {
  bool _isLoading = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("GitHub Profile"),
        backgroundColor: Colors.blue,
      ),
      body: Stack(
        children: [
          WebView(
            initialUrl: widget.url,
            javascriptMode: JavascriptMode.unrestricted,
            onPageFinished: (String url) {
              // WebView has finished loading
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
