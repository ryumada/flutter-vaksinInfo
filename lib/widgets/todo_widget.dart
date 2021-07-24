import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class TodoWidget extends StatelessWidget {
  const TodoWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Padding(
        padding: const EdgeInsets.all(14.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            LayoutBuilder(
              builder: (BuildContext context, BoxConstraints constraints) {
                return Container(
                  height: constraints.maxWidth - 100,
                  child: Image.asset('assets/images/vaccineTime.png'),
                );
              },
            ),
            SizedBox(
              height: 20.0,
            ),
            Card(
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
                              image:
                                  AssetImage('assets/images/judul_sample.jpg'),
                              fit: BoxFit.cover,
                            ),
                          ),
                        );
                      },
                    ),
                  ),
                  Expanded(
                    flex: 4,
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
            Text('hooray'),
            Text('hooray'),
            Text('hooray'),
            Text('hooray'),
            Text('hooray'),
            Text('hooray'),
            Text('hooray'),
            Text('hooray'),
            Text('hooray'),
            Text('hooray'),
            Text('hooray'),
            Text('hooray'),
            Text('hooray'),
            Text('hooray'),
            Text('hooray'),
            Text('hooray'),
            Text('hooray'),
            Text('hooray'),
            Text('hooray'),
            Text('hooray'),
            Text('hooray'),
            Text('hooray'),
            Text('hooray'),
            Text('hooray'),
            Text('hooray'),
            Text('hooray'),
            Text('hooray'),
            Text('hooray'),
            Text('hooray'),
            Text('hooray'),
            Text('hooray'),
            Text('hooray'),
            Text('hooray'),
            Text('hooray'),
            Text('hooray'),
            Text('hooray'),
            Text('hooray'),
            Text('hooray'),
            Text('hooray'),
            Text('hooray'),
            Text('hooray'),
            Text('hooray'),
            Text('hooray'),
            Text('hooray'),
          ],
        ),
      ),
    );
  }
}
