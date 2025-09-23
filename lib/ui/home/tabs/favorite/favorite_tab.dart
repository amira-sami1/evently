import 'package:flutter/material.dart';

import '../home/widget/event_item.dart';

class FavoriteTab extends StatelessWidget {
  const FavoriteTab({super.key});

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return SafeArea(
      child: Padding(
        padding:EdgeInsets.symmetric(
            horizontal: width * 0.04
        ),
        child: Column(
          children: [
            Expanded(child: ListView.separated(
                padding: EdgeInsets.only(
                    top: height * 0.02
                ),
                itemBuilder: (context, index) {
                  return EventItem();
                },
                separatorBuilder: (context, index) {
                  return SizedBox(height: height * 0.02,);
                },
                itemCount: 20
            ))
          ],
        ),
      ),
    );
  }
}
