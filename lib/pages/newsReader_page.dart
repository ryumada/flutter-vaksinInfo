import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class NewsReaderPage extends StatelessWidget {
  final dynamic newsData;
  const NewsReaderPage(this.newsData, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Scrollbar(
        isAlwaysShown: true,
        child: SingleChildScrollView(
          child: Column(
            // crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              /* ------------------------------ gambar berita ----------------------------- */
              InkWell(
                onTap: () {
                  showDialog(
                    context: context,
                    builder: (BuildContext context) => AlertDialog(
                      title: Row(
                        mainAxisSize: MainAxisSize.max,
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Spacer(),
                          ClipOval(
                            child: InkWell(
                              onTap: () => Navigator.pop(context),
                              child: Icon(
                                Icons.close,
                              ),
                            ),
                          ),
                        ],
                      ),
                      content: Image.network(newsData.urlToImage),
                    ),
                  );
                },
                child: LayoutBuilder(
                  builder: (BuildContext context, BoxConstraints constraints) {
                    return Stack(
                      children: <Widget>[
                        Container(
                          height: getBoxedSize(constraints) +
                              MediaQuery.of(context).padding.top,
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              fit: BoxFit.cover,
                              image: NetworkImage(newsData.urlToImage),
                            ),
                          ),
                        ),
                        SafeArea(
                          child: Container(
                            height: getBoxedSize(constraints),
                            padding: const EdgeInsets.all(5.0),
                            alignment: Alignment.topCenter,
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
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  CircleAvatar(
                                    backgroundColor: Colors.grey,
                                    child: IconButton(
                                      icon: Icon(
                                        Icons.arrow_back,
                                        color: Colors.white,
                                      ),
                                      onPressed: () {
                                        Navigator.pop(context);
                                      },
                                    ),
                                  ),
                                  Icon(
                                    Icons.fullscreen_rounded,
                                    color: Colors.white,
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ],
                    );
                  },
                ),
              ),
              /* ------------------------------ judul berita ------------------------------ */
              LayoutBuilder(
                builder: (BuildContext context, BoxConstraints constraints) {
                  return SizedBox(
                    width: (constraints.maxWidth - 25 < 800)
                        ? constraints.maxWidth - 25
                        : 800,
                    child: Padding(
                      padding: EdgeInsets.all(16.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          // tag info berita
                          Text(
                            newsData.title,
                            style: TextStyle(
                              fontSize: 20.0,
                            ),
                          ),
                          SizedBox(
                            height: 5.0,
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
                          SizedBox(
                            height: 12.0,
                          ),
                          /* ------------------------------- text berita ------------------------------ */
                          Text(
                            newsData.content,
                            textAlign: TextAlign.justify,
                          ),
                          SizedBox(
                            height: 32.0,
                          ),
                          Text(
                            'Sumber: ${newsData.source}',
                            textAlign: TextAlign.left,
                            style: TextStyle(
                              color: Colors.grey,
                            ),
                          ),
                          Text(
                            newsData.url,
                            textAlign: TextAlign.left,
                            style: TextStyle(
                              color: Colors.grey,
                            ),
                          ),
                        ],
                      ),
                    ),
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }

  double getBoxedSize(constraints) {
    return (constraints.maxWidth - 50 < 300) ? constraints.maxWidth - 50 : 300;
  }
}
