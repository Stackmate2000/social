import 'package:flutter/material.dart';

class DiscoverPeopleMainTwoImages extends StatefulWidget {
  @override
  _DiscoverPeopleMainTwoImagesState createState() =>
      _DiscoverPeopleMainTwoImagesState();
}

class _DiscoverPeopleMainTwoImagesState
    extends State<DiscoverPeopleMainTwoImages> {
  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.center,
      child: Container(
        height: MediaQuery.of(context).size.height * 0.2,
        width: MediaQuery.of(context).size.width * 0.65,
        decoration: BoxDecoration(color: Colors.white),
        child: Container(
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                height: MediaQuery.of(context).size.height * 0.125,
                width: MediaQuery.of(context).size.width * 0.2,
                decoration: BoxDecoration(
                  color: Colors.grey[300],
                  image: DecorationImage(
                      image: AssetImage("assets/people.jpg"),
                      fit: BoxFit.cover),
                ),
              ),
              SizedBox(
                width: 2.0,
              ),
              Container(
                height: MediaQuery.of(context).size.height * 0.125,
                width: MediaQuery.of(context).size.width * 0.2,
                decoration: BoxDecoration(
                  color: Colors.grey[300],
                  image: DecorationImage(
                      image: AssetImage("assets/astro.jpeg"),
                      fit: BoxFit.cover),
                ),
              ),
              SizedBox(
                width: 2.0,
              ),
              Container(
                height: MediaQuery.of(context).size.height * 0.125,
                width: MediaQuery.of(context).size.width * 0.2,
                decoration: BoxDecoration(
                  color: Colors.grey[300],
                  image: DecorationImage(
                      image: AssetImage("assets/holis.jpg"), fit: BoxFit.cover),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
