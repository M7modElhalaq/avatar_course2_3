import 'package:avatar_course2_3/core/constants.dart';
import 'package:avatar_course2_3/core/resources/manager_colors.dart';
import 'package:avatar_course2_3/core/resources/manager_font_sizes.dart';
import 'package:avatar_course2_3/core/resources/manager_strings.dart';
import 'package:avatar_course2_3/core/routes.dart';
import 'package:flutter/material.dart';

class BioScreen extends StatelessWidget {
  const BioScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          ManagerStrings.bioApp,
          style: TextStyle(
            fontSize: ManagerFontSizes.s24,
            color: ManagerColors.white,
          ),
        ),
        backgroundColor: ManagerColors.transparent,
        elevation: Constants.appBarElevation,
        actions: [
          IconButton(
            onPressed: () {
              Navigator.pushReplacementNamed(context, Routes.aboutScreen);
            },
            icon: const Icon(
              Icons.info_outline,
            ),
          )
        ],
      ),
      extendBodyBehindAppBar: true,
      body: Container(
        alignment: Alignment.center,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: AlignmentDirectional.topStart,
            end: AlignmentDirectional.bottomEnd,
            colors: [
              ManagerColors.primaryColor,
              ManagerColors.secondaryColor,
            ],
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CircleAvatar(
              radius: 64,
              backgroundImage: AssetImage('assets/images/avatar-2.png'),
              // child: Image.network(
              //     'https://img.freepik.com/premium-vector/young-smiling-man-avatar-man-with-brown-beard-mustache-hair-wearing-yellow-sweater-sweatshirt-3d-vector-people-character-illustration-cartoon-minimal-style_365941-860.jpg',
              //
              //   fit: BoxFit.cover,
              // ),
            ),
            SizedBox(height: 24,),
            Text(
                ManagerStrings.userName,
              style: TextStyle(
                fontFamily: 'Georama',
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        )

      ),
    );
  }
}
