import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:tripzz/views/views.dart';
import 'package:tripzz/widgets/destination_list_item.dart';

class DestinationList extends StatelessWidget {
  const DestinationList({super.key});

  @override
  Widget build(BuildContext context) {
    List<Map<String, dynamic>> destination = [
      {
        "image": "assets/img/gunung2.png",
        "hero": "assets/img/gunung1.png",
        "name": "Denveer Mountains",
        "location": "Denveer, Colorado",
      },
      {
        "image": "assets/img/danau1.png",
        "hero": "assets/img/gunung1.png",
        "name": "Rann of Kutch",
        "location": "Kutch, Gujarat",
      },
    ];

    return SizedBox(
      height: 250,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        shrinkWrap: true,
        physics: const ScrollPhysics(),
        itemCount: destination.length,
        itemBuilder: (context, index) {
          return DestinationItem(
            destinationImg: destination[index]['image'],
            onTap: () {
              // print(destination[index]);
              context.pushNamed(DestinationView.routeName, extra: destination[index]);
            },
            destinationName: destination[index]['name'],
            destinationLocation: destination[index]['location'],
            margin: index > 0 ? const EdgeInsets.only(left: 16) : EdgeInsets.zero,
          );
        },
      ),
    );
  }
}
