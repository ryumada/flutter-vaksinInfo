import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AboutWidget extends StatelessWidget {
  const AboutWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Padding(
        padding: EdgeInsets.all(14.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Column(
              // crossAxisAlignment: CrossAxisAlignment.stretch,
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                LayoutBuilder(
                  builder: (BuildContext context, BoxConstraints constraints) {
                    return ClipOval(
                      child: Container(
                        height: (constraints.maxWidth - 100 < 300)
                            ? constraints.maxWidth - 100
                            : 300,
                        width: (constraints.maxWidth - 100 < 300)
                            ? constraints.maxWidth - 100
                            : 300,
                        padding: EdgeInsets.all(12.0),
                        color: Colors.blue,
                        child: Center(
                          child: Text(
                            'Vaksin Info\nand\nTodo List',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontSize: (constraints.maxWidth - 100 < 300)
                                  ? !(constraints.maxWidth - 100 < 0)
                                      ? 30
                                      : 25
                                  : 40,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ),
                    );
                  },
                ),
                SizedBox(
                  height: 20.0,
                ),
                Center(
                  child: Text('versi 1.0.0'),
                ),
              ],
            ),
            SizedBox(
              height: 30,
            ),
            LayoutBuilder(
              builder: (BuildContext context, BoxConstraints constraints) {
                return SizedBox(
                  width:
                      (constraints.maxWidth < 800) ? constraints.maxWidth : 800,
                  child: Center(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'Dibuat Oleh',
                          style: titleFontStyle(),
                        ),
                        Text('ryumada'),
                        SizedBox(
                          height: 30.0,
                        ),
                        Text(
                          'Icon Resources:',
                          style: titleFontStyle(),
                        ),
                        Text('https://www.freepik.com/vectors/badge'),
                        SizedBox(
                          height: 30.0,
                        ),
                        Text(
                          'Data Resources:',
                          style: titleFontStyle(),
                        ),
                        Text('https://www.covid-19.go.id'),
                        Text('https://www.kemkes.go.id'),
                        SizedBox(
                          height: 1000,
                        ),
                        LayoutBuilder(
                          builder: (BuildContext context,
                              BoxConstraints constraints) {
                            return Container(
                              height: (constraints.maxWidth - 150 < 300)
                                  ? constraints.maxWidth - 150
                                  : 300,
                              child: Image.asset(
                                  'assets/images/getYourVaccine.png'),
                            );
                          },
                        ),
                        Padding(
                          padding: EdgeInsets.only(
                            top: 16.0,
                            bottom: 32.0,
                          ),
                          child: Center(
                            child: Text(
                              'Congratulation?!, You\'ve reached the bottom of this view. Congrats 😁, just congrats 😜',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                color: Colors.deepPurple[700],
                              ),
                            ),
                          ),
                        ),
                        Center(
                          child: Text(
                            'copyright 2021\nryumada',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              color: Colors.deepPurple[700],
                            ),
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
    );
  }

  dynamic titleFontStyle() {
    return TextStyle(
      fontSize: 16.0,
      fontWeight: FontWeight.bold,
    );
  }
}
