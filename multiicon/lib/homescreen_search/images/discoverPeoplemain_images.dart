import 'package:flutter/material.dart';

class DiscoverPeopleMainImages extends StatefulWidget {
  @override
  _DiscoverPeopleMainImagesState createState() =>
      _DiscoverPeopleMainImagesState();
}

class _DiscoverPeopleMainImagesState extends State<DiscoverPeopleMainImages> {
  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.center,
      child: Container(
        height: MediaQuery.of(context).size.height * 0.22,
        width: MediaQuery.of(context).size.width * 0.6,
        decoration: BoxDecoration(color: Colors.white),
        child: Container(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    height: MediaQuery.of(context).size.height * 0.1,
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
                    height: MediaQuery.of(context).size.height * 0.1,
                    width: MediaQuery.of(context).size.width * 0.2,
                    decoration: BoxDecoration(
                      color: Colors.grey[300],
                      borderRadius: BorderRadius.only(
                        topRight: Radius.circular(0.0),
                      ),
                      image: DecorationImage(
                          image: AssetImage("assets/holis.jpg"),
                          fit: BoxFit.cover),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 2.0,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    height: MediaQuery.of(context).size.height * 0.1,
                    width: MediaQuery.of(context).size.width * 0.2,
                    decoration: BoxDecoration(
                      color: Colors.grey[300],
                      image: DecorationImage(
                          image: AssetImage("assets/holi.jpg"),
                          fit: BoxFit.cover),
                    ),
                  ),
                  SizedBox(
                    width: 2.0,
                  ),
                  Container(
                    height: MediaQuery.of(context).size.height * 0.1,
                    width: MediaQuery.of(context).size.width * 0.2,
                    decoration: BoxDecoration(
                      color: Colors.grey[300],
                      image: DecorationImage(
                          image: AssetImage("assets/people.jpg"),
                          fit: BoxFit.cover),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
