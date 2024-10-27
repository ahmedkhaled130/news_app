import 'package:flutter/material.dart';
import 'package:news/screens/tab_controller.dart';

import '../shared/network/remote/api_manager/apiManager.dart';

class NewsTab extends StatelessWidget {
  String catId;

  NewsTab(this.catId);

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: ApiManager.getSources(catId),
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.waiting) {
          return Center(
            child: CircularProgressIndicator(),
          );
        }
        if (snapshot.hasError) {
          return Text('Something went wrong');
        }
        var data = snapshot.data?.sources ?? [];
        return TabControllerr(data);
      },
    );
  }
}
