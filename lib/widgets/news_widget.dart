import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:vaksin_info/data/news_data.dart';
import 'package:vaksin_info/pages/newsReader_page.dart';
import 'package:vaksin_info/widgets/news_grid_widget.dart';
import 'package:vaksin_info/widgets/news_list_widget.dart';

class NewsWidget extends StatelessWidget {
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
