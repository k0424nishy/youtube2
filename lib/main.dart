import 'package:flutter/material.dart';
import 'package:youtube_app2/video_detail_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  final items = List<String>.generate(10000, (i) => "Item $i");


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primaryColor: Colors.white,
      ),
      home: Scaffold(
        appBar: AppBar(
          centerTitle: false,
          leading: Icon(Icons.videocam),
          title: const Text('KBOYのFlutter大学'),
          actions: [
            SizedBox(
                width: 44,
                child: FlatButton(
                    child: Icon(Icons.search),
                    onPressed: (){
                      //todo
                    },
                ),
            ),
            SizedBox(
                width: 44,
                child: FlatButton(
                    child: Icon(Icons.more_vert),
                    onPressed: (){
                      //todo
                    },
                ),
            ),
          ],
        ),
        body: Container(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  children: [
                    SizedBox(
                      width: 60,
                      height: 60,
                      child: Image.network('https://yt3.ggpht.com/Acyl-4aTTupNoyoxGGRVoC46a-cxqDk1_SC1JiuV-_XeHSeZBZqNJCjLlekP85t7Iw1qqp5aSA=s176-c-k-c0x00ffffff-no-rj',
                      ),
                    ),
                    const SizedBox(
                      width: 8,
                    ),
                    Column(
                      children: [
                        const Text('KBOYのFlutter大学'),
                        FlatButton(
                          child: Row(
                            children: [
                              Icon(
                                  Icons.video_call,
                                  color: Colors.red,
                              ),
                              Text('登録する'),
                            ],
                          ),
                          onPressed: (){
                            //todo
                          },
                        ),
                      ],
                    )
                  ],
                ),
              ),
              Expanded(
                child: ListView.builder(
                  itemCount: items.length,
                  itemBuilder: (context, index) {
                    return ListTile(
                      onTap: () async{
                      await Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => VideoDetailPage(),
                      ),
                      );
                    },
                      contentPadding: EdgeInsets.all(8),
                      leading:  Image.network('https://i.ytimg.com/vi/PXnqg_Ozouk/hqdefault.jpg?sqp=-oaymwEjCPYBEIoBSFryq4qpAxUIARUAAAAAGAElAADIQj0AgKJDeAE=&rs=AOn4CLAmjUdKEw-jfDH8nwyy3_F1VMXlfw',
                      ),
                      title: Column(
                        children: [
                          Text('[Flutter超入門] リストを作る方法',
                          style: TextStyle(
                            fontWeight: FontWeight.w500,
                          ),),
                          Row(
                           children: [
                             Text('267回再生',
                             style: TextStyle(fontSize: 13),
                             ),
                             Text('5日前',
                               style: TextStyle(fontSize: 13),
                             ),
                           ],
                          ),
                        ],
                      ),
                      trailing: Icon(Icons.more_vert),
                    );
                  },
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

