import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: Colors.blue,
          title: const Text("Favorite cards"),
        ),
        body: Column(
          children: [
            FavoriteCard(
              title: "title", 
              description: "describtion",
              isFavorite: false,
            ),
            FavoriteCard(
              title: "title2", 
              description: "describtion2",
              isFavorite: true,
            ),
          ],
        )
      ),
    ));

class FavoriteCard extends StatefulWidget {
  const FavoriteCard({super.key,required this.title,required this.description,required this.isFavorite});

  final String title;
  final String description;
  final bool isFavorite;

  @override
  State<FavoriteCard> createState() => _FavoriteCardState();
}

class _FavoriteCardState extends State<FavoriteCard> {

  late bool isFavorite;

  @override
  void initState() {
    super.initState();
    isFavorite=widget.isFavorite;
  }

  void changeFavorite(){
    setState(() {
      isFavorite=!isFavorite;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          decoration: const BoxDecoration(
            border: Border(
              bottom: BorderSide(width: .5, color: Colors.grey),
            ),
          ),
          padding: EdgeInsets.fromLTRB(10, 20, 10, 20),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Expanded(
                flex: 7,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      widget.title,
                      style: const TextStyle(
                          color: Colors.blue, fontWeight: FontWeight.w800),
                    ),
                    const SizedBox(height: 10.0),
                    Text(widget.description)
                  ],
                ),
              ),
              IconButton(
                onPressed: () => changeFavorite(),
                icon: Icon(
                  isFavorite ? Icons.favorite : Icons.favorite_border,
                  color: isFavorite ? Colors.red : Colors.grey,
                )
              ),
            ],
          ),
        )
      ],
    );
  }
}
