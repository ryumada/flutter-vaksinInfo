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
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          /* ----------------------------- headline berita ---------------------------- */
          LayoutBuilder(
            builder: (BuildContext context, BoxConstraints constraints) {
              return InkWell(
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return NewsReaderPage();
                  }));
                },
                child: Stack(
                  children: <Widget>[
                    Container(
                      height: getBoxedSize(constraints),
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          fit: BoxFit.cover,
                          image: AssetImage('assets/images/judul_sample.jpg'),
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
                                'Vaksin Sinovac apa Injeksi Covid-19?',
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
              return Text('${constraints.maxWidth}');
            },
          ),
          LayoutBuilder(
            builder: (BuildContext context, BoxConstraints constraints) {
              if (constraints.maxWidth <= 550) {
                /* ------------------------------- list berita ------------------------------ */
                return NewsList();
              } else if (constraints.maxWidth <= 600) {
                return NewsGrid(gridCount: 2);
              } else if (constraints.maxWidth <= 800) {
                return NewsGrid(gridCount: 3);
              } else {
                return NewsGrid(gridCount: 4);
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
  final List<int> newsData = <int>[1, 2, 3, 4, 5, 6, 7, 8, 9, 10];

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      mainAxisSize: MainAxisSize.max,
      children: newsData.map((index) {
        return InkWell(
          onTap: () {
            Navigator.push(context, MaterialPageRoute(builder: (context) {
              return NewsReaderPage();
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
                            decoration: const BoxDecoration(
                              image: DecorationImage(
                                image: AssetImage(
                                    'assets/images/judul_sample.jpg'),
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
                              'Judul Berita',
                              style: TextStyle(fontSize: 16),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Text(
                                'Cuplikan berita tentang vaksin covid-19 hari ini '),
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
  final List<int> newsData = <int>[1, 2, 3, 4, 5, 6, 7, 8, 9, 10];
  final int gridCount;
  NewsGrid({required this.gridCount});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 36.0,
        vertical: 12.0,
      ),
      child: GridView.count(
        shrinkWrap: true,
        crossAxisCount: gridCount,
        crossAxisSpacing: 12.0,
        mainAxisSpacing: 12.0,
        children: newsData.map((index) {
          return InkWell(
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return NewsReaderPage();
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
                          decoration: const BoxDecoration(
                            image: DecorationImage(
                              image:
                                  AssetImage('assets/images/judul_sample.jpg'),
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
                                'Judul Berita',
                                style: TextStyle(fontSize: 16),
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Text(
                                  'Cuplikan berita tentang vaksin covid-19 hari ini '),
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
    );
  }
}
