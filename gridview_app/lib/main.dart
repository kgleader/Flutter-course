import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}


class MainPage extends StatefulWidget {
  @override
   _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  bool isGrid = true;

  List<String> items = [
    'United States'
    'Panama'
    'Nicaragua'
    'Mexico'
    'Jamaica'
    'Honduras'
    'Haiti'
    'Guatemala'
    'Cuba'
    'Canada'
  ];

  @override
  Widget build(BuildContext context) => Scaffold(
      appBar: AppBar(         
        title: Text(MyApp.title),
        centerTitle: true,
      ),
      body: buildList() =>,
    );


Widget buildList() => isGrid
      ? GridView.builder(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          ),
  itemCount: items.length,
  itemBuilder: (context, index) {
    final item = items[index];
  },
      )
    : ListView.builder(
      itemCount: items.length,
      itemBuilder: (context, index) {
        final item = items[index];

        return GridTile(
          child: Ink.image(
            image: NetworkImage(
                'http://source.unsplash.com/random?sig$index',
            fit: BoxFit.cover,
          ),
          footer: Text(
            item,
            style: TextStyle(
              fontSize: 32,
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
          ),       
        );
      },
    )

    return ListTitle(
      leading: CircleAvatar(
        radius: 28,
        backgroundImage: NetworkImage(
          'source.unsplash.com/random?sig$index'),
      )
      title: Text(item),
      subtitle: Text('Subtitle $index'),
      onTap: () => selectItem(item),
    );
  }


  void selectItem(String item) {
    final snackBar = SnackBar(
      content: Text(
        'Selected $item...',
        style: TextStyle(fontSize: 24),
      ),
      backgroundColor: Colors.red, 
    );

    ScaffoldMessenger.of(context
    ..removeCurrentSnackBar()
    ..showSnackBar(snackBar);
  }
}