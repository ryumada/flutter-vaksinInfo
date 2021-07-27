import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:vaksin_info/data/news_data.dart';
import 'package:vaksin_info/pages/newsReader_page.dart';

class NewsWidget extends StatefulWidget {
  @override
  _NewsWidgetState createState() => _NewsWidgetState();
}

class _NewsWidgetState extends State<NewsWidget> {
  // late Future<NewsData> futureNewsData;

  // @override
  // void initState() {
  //   super.initState();
  //   futureNewsData = fetchNewsData();
  // }

  @override
  Widget build(BuildContext context) {
    Size screenSize = MediaQuery.of(context).size;

    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          /* ----------------------------- headline berita ---------------------------- */
          LayoutBuilder(
            builder: (BuildContext context, BoxConstraints constraints) {
              return InkWell(
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    final firstNewsData = newsDataList[0];
                    return NewsReaderPage(firstNewsData);
                  }));
                },
                child: Stack(
                  children: <Widget>[
                    Container(
                      height: getBoxedSize(constraints) +
                          MediaQuery.of(context).padding.top,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          fit: BoxFit.cover,
                          image: NetworkImage(newsDataList[0].urlToImage),
                        ),
                      ),
                    ),
                    SafeArea(
                      child: Container(
                        height: getBoxedSize(constraints),
                        padding: const EdgeInsets.all(5.0),
                        alignment: Alignment.bottomCenter,
                        decoration: BoxDecoration(
                          gradient: LinearGradient(
                            begin: Alignment.topCenter,
                            end: Alignment.bottomCenter,
                            colors: <Color>[
                              Colors.black45,
                              Colors.black12,
                              Colors.black.withAlpha(0),
                              Colors.black12,
                              Colors.black45
                            ],
                          ),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(14.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.stretch,
                            children: [
                              Text(
                                'Headline Berita Vaksin Covid-19',
                                style: getWhiteText(22.0),
                              ),
                              Spacer(
                                flex: 1,
                              ),
                              Text(
                                newsDataList[0].title,
                                style: getWhiteText(20.0),
                              ),
                              SizedBox(
                                height: 8.0,
                              ),
                              Row(
                                children: [
                                  Text(
                                    'Baca Lebih',
                                    style: getWhiteText(14.0),
                                  ),
                                  SizedBox(
                                    width: 8.0,
                                  ),
                                  Icon(
                                    Icons.arrow_right_alt,
                                    color: Colors.white,
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              );
            },
          ),
          /* -------------------------------- separator ------------------------------- */
          SizedBox(height: 10),
          LayoutBuilder(
            builder: (BuildContext context, BoxConstraints constraints) {
              if (constraints.maxWidth <= 550) {
                /* ------------------------------- list berita ------------------------------ */
                return NewsList();
              } else if (constraints.maxWidth <= 600) {
                return NewsGrid(gridCount: 2, titleLength: 35, descLength: 60);
              } else if (constraints.maxWidth <= 650) {
                return NewsGrid(gridCount: 2, titleLength: 60, descLength: 60);
              } else if (constraints.maxWidth <= 800) {
                return NewsGrid(gridCount: 2, titleLength: 120, descLength: 90);
              } else if (constraints.maxWidth <= 850) {
                return NewsGrid(gridCount: 3, titleLength: 30, descLength: 60);
              } else if (constraints.maxWidth <= 900) {
                return NewsGrid(gridCount: 3, titleLength: 40, descLength: 60);
              } else if (constraints.maxWidth <= 950) {
                return NewsGrid(gridCount: 3, titleLength: 80, descLength: 60);
              } else {
                return NewsGrid(gridCount: 3, titleLength: 120, descLength: 60);
              }
            },
          ),

          /* --------------------------------- footer --------------------------------- */
          Padding(
            padding: EdgeInsets.only(
              top: 16.0,
              bottom: 32.0,
            ),
            child: Center(
              child: Text(
                'That\'s all for now. 😉',
                style: TextStyle(
                  color: Colors.blueGrey[700],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  TextStyle getWhiteText(size) {
    return TextStyle(
      fontSize: size,
      color: Colors.white,
    );
  }

  double getBoxedSize(constraints) {
    return (constraints.maxWidth - 50 < 550) ? constraints.maxWidth - 50 : 550;
  }
}

class NewsList extends StatelessWidget {
  // final List<int> newsData = <int>[1, 2, 3, 4, 5, 6, 7, 8, 9, 10];

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
