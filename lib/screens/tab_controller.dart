import 'package:flutter/material.dart';
import 'package:news/models/SourcesResoponse.dart';
import 'package:news/screens/news_card_item.dart';
import 'package:news/screens/sourceItem.dart';
import 'package:news/shared/network/remote/api_manager/apiManager.dart';

class TabControllerr extends StatefulWidget {
  List<Sources> sources;

  TabControllerr(this.sources);

  @override
  State<TabControllerr> createState() => _TabControllerrState();
}

class _TabControllerrState extends State<TabControllerr> {
  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        DefaultTabController(
            length: widget.sources.length,
            child: TabBar(
                indicatorColor: Colors.transparent,
                isScrollable: true,
                onTap: (index) {
                  selectedIndex = index;
                  setState(() {});
                },
                tabs: widget.sources
                    .map((source) => Tab(
                          child: SourceItem(source,
                              widget.sources.indexOf(source) == selectedIndex),
                        ))
                    .toList())),
        FutureBuilder(
          future: ApiManager.getNems(widget.sources[selectedIndex].id ?? ""),
          builder: (context, snapshot) {
            if (snapshot.connectionState == ConnectionState.waiting) {
              return Center(
                child: CircularProgressIndicator(),
              );
            }
            if (snapshot.hasError) {
              return Text('Something went wrong');
            }
            var newsList = snapshot.data?.articles ?? [];
            return Expanded(
              child: ListView.builder(
                itemBuilder: (context, index) {
                  return NewsCardItem(newsList[index]);
                },
                itemCount: newsList.length,
              ),
            );
          },
        )
      ],
    );
  }
}
