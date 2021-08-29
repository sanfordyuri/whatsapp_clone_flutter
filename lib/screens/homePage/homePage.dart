import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'custom/customHomeWidget.dart';

class homePage extends StatefulWidget {
  @override
  _homePageState createState() => _homePageState();
}

class _homePageState extends State<homePage> with TickerProviderStateMixin {

  late TabController _TabController;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _TabController = TabController(length: 4, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFF075E54),
        title: Text('WhatsApp'),
        actions: [
          IconButton(onPressed: () {}, icon: Icon(Icons.search)),
          IconButton(onPressed: () {}, icon: Icon(Icons.more_vert)),
        ],
        bottom: TabBar(
          indicatorColor: Colors.white,
          controller: _TabController,
          tabs: [
            Tab(icon: Icon(Icons.camera_alt)),
            Tab(text: 'CHATS',),
            Tab(text: 'STATUS',),
            Tab(text: 'CALLS',),
          ],
        ),
      ),
      body: TabBarView(
        controller: _TabController,
        children: [
          Center(child: Text('You are on the Camera page')),
          ListView(
            scrollDirection: Axis.vertical,
            children: [
              customHomeWidget(nome_contato: 'Musk', data: '10:33 PM', imagem: 'https://s2.glbimg.com/hOQeWyRlurqGohHz2rDzpirVqgo=/e.glbimg.com/og/ed/f/original/2021/06/26/gettyimages-1229892421.jpg', mensagem: 'Hey man, all right ?'),
              customHomeWidget(nome_contato: 'Bill Gates', data: '9:40 PM', imagem: 'https://www.infomoney.com.br/wp-content/uploads/2019/06/bill-gates-7.jpg?w=768&quality=70&strip=all', mensagem: 'What you think about flutter?'),
              customHomeWidget(nome_contato: 'Warren Buffet', data: '7:00 PM', imagem: 'https://zahl.com.br/wp-content/uploads/2020/08/warren_buffet-770x460.jpg', mensagem: 'Yep, i bought shares of Nubank'),
              customHomeWidget(nome_contato: 'Bejamim Graham', data: '6:58 PM', imagem: 'https://upload.wikimedia.org/wikipedia/commons/thumb/6/69/8-brilliant-lessons-from-the-investor-that-taught-warren-buffett-everything-he-knows.jpg/200px-8-brilliant-lessons-from-the-investor-that-taught-warren-buffett-everything-he-knows.jpg', mensagem: 'what whatsapp means ? o.O'),
              customHomeWidget(nome_contato: 'Nikola Tesla', data: '6:30 PM', imagem: 'https://cdn.universoracionalista.org/wp-content/uploads/2015/04/Nikola-Tesla-696x522.jpg', mensagem: 'Where is Edson? 😡'),
              customHomeWidget(nome_contato: 'Charlie Munger', data: '6:10 PM', imagem: 'https://comoinvestir.thecap.com.br/wp-content/uploads/2021/02/charlie-munger-aconselha-investidores-a-nunca-comprar-bitcoin.jpg', mensagem: 'Do not buies bitcoin!'),
              customHomeWidget(nome_contato: 'Rick Sanchez', data: '5:08 PM', imagem: 'https://observatoriodocinema.uol.com.br/wp-content/uploads/2020/09/Rick-and-Morty-season-5-release-date-2674048.jpg', mensagem: 'wubba lubba dub dub 🤪'),
              customHomeWidget(nome_contato: 'The Investors', data: '4:50 PM', imagem: 'https://assets.entrepreneur.com/content/3x2/2000/1392158430-need-investor-ditch-pitch.jpg?width=700&crop=2:1', mensagem: 'Warren Buffet: Hey Guys!'),
              customHomeWidget(nome_contato: 'Flutter Comunity', data: '4:32 PM', imagem: 'https://w0.peakpx.com/wallpaper/404/508/HD-wallpaper-flutter-logo-flutter-code-computer-programming-logo.jpg', mensagem: 'You: Oque é vsync?'),
              customHomeWidget(nome_contato: 'Java Comunity', data: '3:08 PM', imagem: 'http://s2.glbimg.com/vME2Bq4OSpm6f6IE16BhcVLR98U=/695x0/s.glbimg.com/po/tt2/f/original/2014/11/14/java-logo.jpg', mensagem: 'Larry Ellison: Yep, is it'),

            ],
          ),
          Center(child: Text('You are on the Status')),
          Center(child: Text('You are on the Calls')),
        ],
      ),
    );
  }
}
