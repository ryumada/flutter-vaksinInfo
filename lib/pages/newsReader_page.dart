import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class NewsReaderPage extends StatelessWidget {
  const NewsReaderPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
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
                    content: Image.asset('assets/images/judul_sample.jpg'),
                  ),
                );
              },
              child: LayoutBuilder(
                builder: (BuildContext context, BoxConstraints constraints) {
                  return Stack(
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
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
                      children: [
                        Text(
                          'Judul Berita tentang Covid-19 dan Vaksin Covid-19 Hari ini',
                          style: TextStyle(
                            fontSize: 20.0,
                          ),
                        ),
                        SizedBox(
                          height: 5.0,
                        ),
                        // tag info berita
                        Row(
                          mainAxisAlignment: (constraints.maxWidth - 25 < 600)
                              ? MainAxisAlignment.start
                              : MainAxisAlignment.center,
                          children: [
                            Text(
                              '22 Juni 2020',
                              style: TextStyle(
                                fontSize: 10.0,
                                color: Colors.grey,
                              ),
                            ),
                            SizedBox(
                              width: 12.0,
                            ),
                            Text(
                              '22 Juni 2020',
                              style: TextStyle(
                                fontSize: 10.0,
                                color: Colors.grey,
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 12.0,
                        ),
                        /* ------------------------------- text berita ------------------------------ */
                        Text(
                          'Even if the software updates process looks like a simple way, Mostly, 1-5% of people always face issues when they try to make OTA updates. That’s why we suggest you should always make a backup before making an update on your mobile. Always use cloud photo backup service like Google Photos. Compare with other mobile manufacturers, with the help of Xiaomi available tools; we can fix your Xiaomi Pocophone F1 stuck on the boot logo.',
                          textAlign: TextAlign.justify,
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
    );
  }

  double getBoxedSize(constraints) {
    return (constraints.maxWidth - 50 < 300) ? constraints.maxWidth - 50 : 300;
  }
}
