import 'package:flutter/material.dart';
import 'package:news/models/SourcesResoponse.dart';

class SourceItem extends StatelessWidget {
  Sources sources;
  bool selected;

  SourceItem(this.sources, this.selected);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: selected ? Colors.green : Colors.transparent,
          borderRadius: BorderRadius.circular(25),
          border: Border.all(color: Colors.green)),
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Text(
          sources.name ?? "",
          style: TextStyle(color: selected ? Colors.white : Colors.green),
        ),
      ),
    );
  }
}
