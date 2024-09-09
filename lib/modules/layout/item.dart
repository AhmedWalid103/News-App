import 'package:flutter/material.dart';
import 'package:news_app/modules/layout/item_data.dart';

class Item extends StatelessWidget {
  final int index;
  final ItemData items;
  final void Function(ItemData) onItemClicked;

  Item({super.key, required this.items, required this.onItemClicked, required this.index});

  @override
  Widget build(BuildContext context) {
    var theme = Theme.of(context);
    return InkWell(
      onTap: () {
        onItemClicked(items);
      },
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Container(
          decoration: BoxDecoration(
            color: items.ItemColor,
            borderRadius:  BorderRadius.only(
              topLeft: const Radius.circular(25),
              topRight: const Radius.circular(25),
              bottomLeft:index%2==0? const Radius.circular(25):const Radius.circular(0),
              bottomRight:index%2==0?const Radius.circular(0): const Radius.circular(25),
            ),
          ),
          child: Column(
            children: [
              Expanded(
                child: Image.asset(
                  items.ItemImage,
                  fit: BoxFit.cover,
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  items.ItemName,
                  style: theme.textTheme.bodySmall?.copyWith(
                    color: const Color(0xFFFFFFFF),
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
