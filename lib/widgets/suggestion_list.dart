import 'package:flutter/material.dart';
import 'package:imobis/contants.dart';
import 'package:imobis/models/item_model.dart';
import 'package:imobis/screens/detail_screen.dart';
import 'package:imobis/widgets/house_card.dart';

class SuggestionList extends StatefulWidget {
  SuggestionList(this.title, this.items, {Key? key}) : super(key: key);

  String? title;
  List<Item> items;

  @override
  State<SuggestionList> createState() => _SuggestionListState();
}

class _SuggestionListState extends State<SuggestionList> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: background,
      margin: const EdgeInsets.only(
          // right: 10,
          // left: 10,
          ),
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(
              left: 10.0,
              right: 10.0,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  widget.title!,
                  style: const TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 18.0,
                    color: darkTypography,
                  ),
                ),
                TextButton(
                  onPressed: () {},
                  child: const Text(
                    "Ver tudo",
                    style: TextStyle(
                      color: blue,
                    ),
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 12.0,
          ),
          SizedBox(
            height: 340.0,
            width: double.infinity,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: widget.items.length,
              itemBuilder: (contex, index) => ItemCard(
                widget.items[index],
                () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => DetailScreen(
                        widget.items[index],
                      ),
                    ),
                  );
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}
