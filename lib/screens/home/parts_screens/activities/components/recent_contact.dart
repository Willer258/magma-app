// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:magmascreen/utils/constants.dart';

class RecentContact extends StatelessWidget {
  const RecentContact({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    const contacts = <Map<String?, String>>[
      {
        'name': 'Alex',
        'url':
            'https://images.pexels.com/photos/3894557/pexels-photo-3894557.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1'
      },
      {
        'name': 'Willer',
        'url':
            'https://firebasestorage.googleapis.com/v0/b/adgroupe-website.appspot.com/o/assets-adgroupe%2Fentreprise%2Fleaders%2FHouinlindjonon%20Alain%20Wilfried.jpg?alt=media&token=641d60bd-e51b-442e-a0ab-917b6da0e0ec'
      },
      {
        'name': 'Moko',
        'url':
            'https://images.pexels.com/photos/654692/pexels-photo-654692.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1'
      },
      {
        'name': 'Paul',
        'url':
            'https://images.pexels.com/photos/1105353/pexels-photo-1105353.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1'
      },
      {
        'name': 'Sid',
        'url':
            'https://images.pexels.com/photos/2748242/pexels-photo-2748242.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1'
      },
      {
        'name': 'Vi Evergarden',
        'url':
            'https://images.pexels.com/photos/3328072/pexels-photo-3328072.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1'
      },
      {
        'name': 'Osborn',
        'url':
            'https://images.pexels.com/photos/13326901/pexels-photo-13326901.jpeg?auto=compress&cs=tinysrgb&w=1600'
      },
      {
        'name': 'Helios',
        'url':
            'https://images.pexels.com/photos/13438143/pexels-photo-13438143.jpeg?auto=compress&cs=tinysrgb&w=1600'
      },
    ];
    return SizedBox(
      width: double.infinity,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(left: kDefaultPadding),
            child: Text(
              'Récement',
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          SingleChildScrollView(
            physics: const BouncingScrollPhysics(),
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                Padding(
                  padding: EdgeInsets.only(left: kDefaultPadding),
                  child: Column(
                    children: [
                      Container(
                        height: 60,
                        width: 60,
                        decoration: BoxDecoration(
                            color: Colors.grey[300],
                            borderRadius: BorderRadius.circular(50)),
                        child: IconButton(
                          icon: Icon(
                            Icons.search,
                            size: 35,
                          ),
                          onPressed: () {},
                        ),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Text(
                        'Rechercher',
                        style: TextStyle(
                            fontSize: 12, fontWeight: FontWeight.bold),
                      )
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(right: kDefaultPadding),
                  child: Row(
                      children: contacts
                          .map((contact) => Contact(
                              name: contact['name'], url: contact['url']))
                          .toList()),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}

class Contact extends StatelessWidget {
  const Contact({
    super.key,
    required this.name,
    required this.url,
  });
  final String? name;
  final String? url;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: kDefaultPadding / 2),
      child: Column(
        children: [
          Container(
            height: 60,
            width: 60,
            decoration: BoxDecoration(
                image: DecorationImage(image: NetworkImage(url!)),
                color: Colors.grey[300],
                borderRadius: BorderRadius.circular(50)),
            child: TextButton(
              style: ElevatedButton.styleFrom(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(50))),
              child: Text(''),
              onPressed: () {},
            ),
          ),
          SizedBox(
            height: 5,
          ),
          Text(
            name!,
            style: TextStyle(fontSize: 12),
          )
        ],
      ),
    );
  }
}
