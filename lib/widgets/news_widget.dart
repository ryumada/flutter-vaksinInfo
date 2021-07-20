import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class NewsWidget extends StatelessWidget {
  const NewsWidget({Key? key}) : super(key: key);

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
              return Stack(
                children: <Widget>[
                  Container(
                    height: constraints.maxWidth - 50,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        fit: BoxFit.cover,
                        image: AssetImage('assets/images/judul_sample.jpg'),
                      ),
                    ),
                  ),
                  SafeArea(
                    child: Container(
                      height: constraints.maxWidth - 50,
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
              );
            },
          ),
          SizedBox(height: 100),
          Text('Baca Lebih...'),
          Text('Baca Lebih...'),
          Text('Baca Lebih...'),
          Text('Baca Lebih...'),
          Text('Baca Lebih...'),
          Text('Baca Lebih...'),
          Text('Baca Lebih...'),
          Text('Baca Lebih...'),
          Text('Baca Lebih...'),
          Text('Baca Lebih...'),
          Text('Baca Lebih...'),
          Text('Baca Lebih...'),
          Text('Baca Lebih...'),
          Text('Baca Lebih...'),
          Text('Baca Lebih...'),
          Text('Baca Lebih...'),
          Text('Baca Lebih...'),
          Text('Baca Lebih...'),
          Text('Baca Lebih...'),
          Text('Baca Lebih...'),
          Text('Baca Lebih...'),
          Text('Baca Lebih...'),
          Text('Baca Lebih...'),
          Text('Baca Lebih...'),
          Text('Baca Lebih...'),
          Text('Baca Lebih...'),
          Text('Baca Lebih...'),
          Text('Baca Lebih...'),
          Text('Baca Lebih...'),
          Text('Baca Lebih...'),
          Text('Baca Lebih...'),
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
}
