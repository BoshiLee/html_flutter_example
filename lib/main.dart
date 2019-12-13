import 'package:flutter/material.dart';
import 'package:flutter_html/flutter_html.dart';
import 'package:html_flutter/const.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData.dark(),
      home: HtmlScreen(),
    );
  }
}

class HtmlScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Html(
          data: testHtml,
          //Optional parameters:
          padding: EdgeInsets.all(16.0),
          backgroundColor: Colors.white,
          defaultTextStyle: TextStyle(color: Colors.black, fontSize: 14),
          linkStyle: const TextStyle(
            color: Colors.redAccent,
          ),
          onLinkTap: (url) {
            print(url);
            // open url in a webview
          },
          onImageTap: (src) {
            // Display the image in large form.
          },
          //Must have useRichText set to false for this to work.
        ),
      ),
    );
  }
}
