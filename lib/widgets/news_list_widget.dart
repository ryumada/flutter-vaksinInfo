import 'package:flutter/material.dart';
import 'package:vaksin_info/data/news_data.dart';
import 'package:vaksin_info/pages/newsReader_page.dart';

class NewsList extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      mainAxisSize: MainAxisSize.max,
      children: newsDataList.map((newsData) {
        return InkWell(
          onTap: () {
            Navigator.push(context, MaterialPageRoute(builder: (context) {
              return NewsReaderPage(newsData);
            }));
          },
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8.0),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(20.0),
              child: Card(
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Expanded(
                      flex: 1,
                      child: LayoutBuilder(
                        builder:
                            (BuildContext context, BoxConstraints constraints) {
                          return Container(
                            height: constraints.maxWidth,
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                image: NetworkImage(newsData.urlToImage),
                                fit: BoxFit.cover,
                              ),
                            ),
                          );
                        },
                      ),
                    ),
                    Expanded(
                      flex: 2,
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Text(
                              newsData.title,
                              style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Text(
                              newsData.publishedAt.split('T')[0],
                              style: TextStyle(
                                color: Colors.grey,
                              ),
                            ),
                            Text(
                              newsData.author,
                              style: TextStyle(
                                color: Colors.grey,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        );
      }).toList(),
    );
  }
}
