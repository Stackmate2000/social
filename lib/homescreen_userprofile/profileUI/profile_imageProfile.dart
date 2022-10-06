import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ProfileImageProfile extends StatefulWidget {
  const ProfileImageProfile({Key key}) : super(key: key);

  @override
  _ProfileImageProfileState createState() => _ProfileImageProfileState();
}

class _ProfileImageProfileState extends State<ProfileImageProfile> {
  modalBottomSheet(context) {
    showModalBottomSheet(
      backgroundColor: Colors.transparent,
      context: context,
      builder: (BuildContext context) {
        return Container(
          height: 220.0,
          decoration: BoxDecoration(
            color: Colors.transparent,
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(16),
              topRight: Radius.circular(16),
            ),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Container(
                height: 120,
                width: MediaQuery.of(context).size.width * 0.95,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.all(
                    Radius.circular(16),
                  ),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    GestureDetector(
                      onTap: () {
                        //takePhoto(ImageSource.camera);
                      },
                      child: Container(
                        child: Text(
                          "Open camera",
                          style: GoogleFonts.montserrat(
                              color: Colors.black,
                              fontSize: 16,
                              fontWeight: FontWeight.w400),
                        ),
                      ),
                    ),
                    Divider(
                      thickness: 0.1,
                      indent: 30,
                      endIndent: 30,
                      color: Colors.grey[300],
                    ),
                    GestureDetector(
                      onTap: () {},
                      child: Container(
                        child: Text(
                          "Select from photos",
                          style: GoogleFonts.montserrat(
                              color: Colors.black,
                              fontSize: 16,
                              fontWeight: FontWeight.w400),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                height: 60,
                width: MediaQuery.of(context).size.width * 0.95,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.all(
                    Radius.circular(18),
                  ),
                ),
                child: Container(
                  child: TextButton(
                    onPressed: () {
                      Navigator.of(context).pop();
                    },
                    child: Text(
                      "Cancell",
                      style: GoogleFonts.montserrat(
                          color: Colors.black,
                          fontSize: 16,
                          fontWeight: FontWeight.w500),
                    ),
                  ),
                ),
              ),
            ],
          ),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        modalBottomSheet(context);
      },
      child: Container(
        height: 55,
        width: 55,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.all(
            Radius.circular(16.0),
          ),
          image: DecorationImage(
            image: AssetImage("assets/nigga.jpg"),
            fit: BoxFit.cover,
          ),
          color: Color(0xffADB3BF),
        ),
      ),
    );
  }
}
