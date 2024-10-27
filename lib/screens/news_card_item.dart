import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:news/models/NewsResponse.dart';

class NewsCardItem extends StatelessWidget {
  Articles articles;

  NewsCardItem(this.articles);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8),
      child: Card(
        elevation: 12,
        shape: OutlineInputBorder(
            borderRadius: BorderRadius.circular(18),
            borderSide: BorderSide(color: Colors.transparent)),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(18), topRight: Radius.circular(18)),
              child: CachedNetworkImage(
                imageUrl: articles.urlToImage ?? "",
                fit: BoxFit.cover,
                height: 230,
                width: double.infinity,
                placeholder: (context, url) =>
                    Center(child: CircularProgressIndicator()),
                errorWidget: (context, url, error) => Icon(Icons.error),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                children: [
                  Text(articles.title ?? "",
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 22)),
                  Text(articles.description ?? "",
                      style: TextStyle(
                          fontWeight: FontWeight.normal, fontSize: 18)),
                  Align(
                    alignment: Alignment.centerRight,
                    child: Text(
                      articles.publishedAt?.substring(0, 10) ?? "",
                      style: TextStyle(color: Colors.black54),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
