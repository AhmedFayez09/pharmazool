import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:pharmazool/app/doctor/screens/doctor_sign_up_screen.dart';
import 'package:pharmazool/app/patient/auth_screens/patient_register_screen.dart';
import 'package:pharmazool/app/patient/auth_screens/sign_in_screen.dart';
import 'package:pharmazool/constants_widgets/utils/app_theme_colors.dart';
import 'package:pharmazool/constants_widgets/utils/media_query_values.dart';

class TabBarScreen_patient extends StatefulWidget {
  const TabBarScreen_patient({Key? key}) : super(key: key);

  @override
  _TabBarScreen_patientState createState() => _TabBarScreen_patientState();
}

class _TabBarScreen_patientState extends State<TabBarScreen_patient> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: IconButton(
          icon: const Icon(
            Icons.arrow_back_ios,
            color: Colors.black,
          ),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(40.0),
          child: Column(
            children: [
              const AutoSizeText(
                'P H A R M Z O O L',
                style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: context.height * 0.1,
              ),
              DefaultTabController(
                length: 2,
                initialIndex: 0,
                child: Column(
                  children: [
                    TabBar(
                        unselectedLabelColor: Colors.grey,
                        isScrollable: true,
                        labelColor: Colors.black,
                        indicatorWeight: 6,
                        // indicatorPadding: const EdgeInsetsDirectional.only(
                        //     start: 100, end: 100),
                        indicatorColor: AppColors.PharmaColor,
                        indicatorSize: TabBarIndicatorSize.tab,
                        tabs: const [
                          Tab(
                            text: 'Sign In',
                          ),
                          Tab(
                            text: 'Sign Up',
                          ),
                        ]),
                    Container(
                      decoration: const BoxDecoration(
                          border: Border(
                              top: BorderSide(color: Colors.grey, width: 0.5))),
                      height: 500,
                      child: const TabBarView(children: [
                        PatientSignin(),
                        PatientRegister(),
                      ]),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
