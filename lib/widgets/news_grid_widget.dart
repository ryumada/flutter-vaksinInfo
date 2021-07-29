import 'package:flutter/material.dart';
import 'package:vaksin_info/data/news_data.dart';
import 'package:vaksin_info/pages/newsReader_page.dart';

class NewsGrid extends StatelessWidget {
  final int gridCount;
  final int descLength;
  final int titleLength;
  NewsGrid(
      {required this.gridCount,
      required this.descLength,
      required this.titleLength});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 1000,
      child: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 36.0,
          vertical: 12.0,
        ),
        child: GridView.count(
          shrinkWrap: true,
          crossAxisCount: gridCount,
          crossAxisSpacing: 12.0,
          mainAxisSpacing: 12.0,
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
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Expanded(
                          flex: 1,
                          child: Container(
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                image: NetworkImage(newsData.urlToImage),
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                        ),
                        Expanded(
                          flex: 1,
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                Text(
                                  (newsData.title.length < titleLength)
                                      ? newsData.title
                                      : newsData.title.replaceRange(titleLength,
                                          newsData.title.length, '...'),
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
                                  'By ${(newsData.author.length < 27) ? newsData.author : newsData.author.replaceRange(27, newsData.author.length, '...')}',
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
        ),
      ),
    );
  }
}
