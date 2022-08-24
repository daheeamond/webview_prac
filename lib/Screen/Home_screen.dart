import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

class HomeScreen extends StatelessWidget {
  WebViewController? controller;
  final homeurl='https://velog.io/@steadygo247/Flutterinappwebview';

 HomeScreen({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return Scaffold(
       appBar: AppBar(
         backgroundColor: Colors.amber,
         title: Text('Lia blog'),
         centerTitle: true,
         actions: [
           IconButton(onPressed: (){
             if(controller == null) {
               return;
             }
             controller!.loadUrl(homeurl);
           },
             icon: Icon(
               Icons.home_outlined
             ),
           ),
         ],
       ),
        body: WebView(
          onWebViewCreated:(WebViewController controller){
            this.controller = controller;
          } ,
          initialUrl: homeurl,
          javascriptMode: JavascriptMode.unrestricted,
        )
    );
  }
}
