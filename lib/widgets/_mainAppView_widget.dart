import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MainAppView extends StatelessWidget {
  final String title;
  final dynamic icon;
  final dynamic color;
  final mainViewTab;
  const MainAppView(this.title, this.icon, this.color, this.mainViewTab,
      {Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            /* -------------------------------- title bar ------------------------------- */
            // Container(
            //   decoration: BoxDecoration(
            //     color: Colors.white,
            //     boxShadow: [
            //       BoxShadow(
            //         color: Colors.grey.withOpacity(0.5),
            //         spreadRadius: 5,
            //         blurRadius: 7,
            //         offset: Offset(4, 8),
            //       ),
            //     ],
            //   ),
            //   child: Padding(
            //     padding: EdgeInsets.all(16.0),
            //     child: Row(
            //       children: [
            //         Expanded(
            //           flex: 1,
            //           child: Icon(
            //             icon,
            //             color: color,
            //           ),
            //         ),
            //         Expanded(
            //           flex: 9,
            //           child: Text(
            //             title,
            //             style: TextStyle(
            //               fontSize: 18,
            //             ),
            //           ),
            //         ),
            //       ],
            //     ),
            //   ),
            // ),
            /* -------------------------------- main view ------------------------------- */
            mainViewTab,
          ],
        ),
      ),
    );
  }
}
