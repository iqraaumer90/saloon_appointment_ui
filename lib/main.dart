import 'package:flutter/material.dart';
import 'package:saloon_appointment_ui/data_container.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  late TextEditingController customerController;
  late TextEditingController chooseServiceController;
  late TextEditingController phoneNumberController;
  late TextEditingController appointmentDateController;
  late TextEditingController appointmentTimeController;

  late FocusNode customerFocusnode;
  late FocusNode serviceFocusnode;
  late FocusNode numbFocusnode;
  late FocusNode dateFocusnode;
  late FocusNode timeFocusnode;

  String customerName = '';
  String chooseService = '';
  String phoneNumber = '';
  String appointmentDate = '';
  String appointmentTime = '';

  @override
  void initState() {
    super.initState();

    customerFocusnode = FocusNode();
    serviceFocusnode = FocusNode();
    numbFocusnode = FocusNode();
    dateFocusnode = FocusNode();
    timeFocusnode = FocusNode();

    customerController = TextEditingController()
      ..addListener(() {
        setState(() {
          customerName = customerController.text;
        });
      });

    chooseServiceController = TextEditingController()
      ..addListener(() {
        setState(() {
          chooseService = chooseServiceController.text;
        });
      });

    phoneNumberController = TextEditingController()
      ..addListener(() {
        setState(() {
          phoneNumber = phoneNumberController.text;
        });
      });

    appointmentDateController = TextEditingController()
      ..addListener(() {
        setState(() {
          appointmentDate = appointmentDateController.text;
        });
      });

    appointmentTimeController = TextEditingController()
      ..addListener(() {
        setState(() {
          appointmentTime = appointmentTimeController.text;
        });
      });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffD8C4BE),
      body: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              width: 400,
              padding: const EdgeInsets.all(30),
              decoration: BoxDecoration(
                color: const Color(0xffF7F1EF),
                borderRadius: BorderRadius.circular(28),
              ),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    "LUMIERE",
                    style: TextStyle(
                      color: Color(0xff8F665B),
                      fontSize: 12,
                      fontWeight: FontWeight.bold,
                      letterSpacing: 3,
                    ),
                  ),

                  const SizedBox(height: 8),

                  Text(
                    " 𝒴𝑜𝓊𝓇 𝒷𝑒𝒶𝓊𝓉𝓎. 𝒴𝑜𝓊𝓇 𝓂𝑜𝓂𝑒𝓃𝓉",
                    style: TextStyle(
                      color: Color(0xff3C2924),
                      fontSize: 20,
                      fontWeight: FontWeight.w600,
                      letterSpacing: 0.5,
                    ),
                  ),

                  const SizedBox(height: 7),

                  Text(
                    "𝑳𝒆𝒕 𝒖𝒔 𝒎𝒂𝒌𝒆 𝒚𝒐𝒖𝒓 𝒂𝒑𝒑𝒐𝒊𝒏𝒕𝒎𝒆𝒏𝒕 𝒔𝒑𝒆𝒄𝒊𝒂𝒍!",
                    style: TextStyle(
                      color: Color(0xffA58B83),
                      fontSize: 13,
                      letterSpacing: 0.3,
                    ),
                  ),

                  SizedBox(height: 20),

                  Container(
                    height: 52,
                    padding: EdgeInsets.symmetric(horizontal: 12),
                    decoration: BoxDecoration(
                      color: const Color(0xffFFF9F6),
                      borderRadius: BorderRadius.circular(14),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black12,
                          blurRadius: 6,
                          offset: Offset(2, 3),
                        ),
                      ],
                    ),
                    child: TextField(
                      controller: customerController,
                      focusNode: customerFocusnode,
                      decoration: InputDecoration(
                        icon: Icon(
                          Icons.people_outlined,
                          color: Color(0xff7D574B),
                          size: 22,
                        ),
                        hintText: 'Customer Name',
                        hintStyle: TextStyle(
                          color: Color(0xffA58B83),
                          fontSize: 14,
                        ),
                        border: InputBorder.none,
                      ),
                    ),
                  ),

                  SizedBox(height: 20),

                  Container(
                    height: 52,
                    padding: EdgeInsets.symmetric(horizontal: 12),
                    decoration: BoxDecoration(
                      color: const Color(0xffFFF9F6),
                      borderRadius: BorderRadius.circular(14),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black12,
                          blurRadius: 6,
                          offset: Offset(2, 3),
                        ),
                      ],
                    ),
                    child: TextField(
                      controller: chooseServiceController,
                      focusNode: serviceFocusnode,
                      decoration: InputDecoration(
                        icon: Icon(
                          Icons.spa_outlined,
                          color: Color(0xff7D574B),
                          size: 22,
                        ),
                        hintText: 'Choose Service',
                        hintStyle: TextStyle(
                          color: Color(0xffA58B83),
                          fontSize: 14,
                        ),
                        border: InputBorder.none,
                      ),
                    ),
                  ),

                  SizedBox(height: 20),

                  Container(
                    height: 52,
                    padding: EdgeInsets.symmetric(horizontal: 12),
                    decoration: BoxDecoration(
                      color: const Color(0xffFFF9F6),
                      borderRadius: BorderRadius.circular(14),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black12,
                          blurRadius: 6,
                          offset: Offset(2, 3),
                        ),
                      ],
                    ),
                    child: TextField(
                      controller: phoneNumberController,
                      focusNode: numbFocusnode,
                      decoration: InputDecoration(
                        icon: Icon(
                          Icons.phone_outlined,
                          color: Color(0xff7D574B),
                          size: 22,
                        ),
                        hintText: 'Phone Number',
                        hintStyle: TextStyle(
                          color: Color(0xffA58B83),
                          fontSize: 14,
                        ),
                        border: InputBorder.none,
                      ),
                    ),
                  ),

                  SizedBox(height: 20),

                  Container(
                    height: 52,
                    padding: EdgeInsets.symmetric(horizontal: 12),
                    decoration: BoxDecoration(
                      color: const Color(0xffFFF9F6),
                      borderRadius: BorderRadius.circular(14),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black12,
                          blurRadius: 6,
                          offset: Offset(2, 3),
                        ),
                      ],
                    ),
                    child: TextField(
                      controller: appointmentDateController,
                      focusNode: dateFocusnode,
                      decoration: InputDecoration(
                        icon: Icon(
                          Icons.calendar_month_outlined,
                          color: Color(0xff7D574B),
                          size: 22,
                        ),
                        hintText: 'Appointment Date',
                        hintStyle: TextStyle(
                          color: Color(0xffA58B83),
                          fontSize: 14,
                        ),
                        border: InputBorder.none,
                      ),
                    ),
                  ),

                  SizedBox(height: 20),

                  Container(
                    height: 52,
                    padding: EdgeInsets.symmetric(horizontal: 12),
                    decoration: BoxDecoration(
                      color: const Color(0xffFFF9F6),
                      borderRadius: BorderRadius.circular(14),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black12,
                          blurRadius: 6,
                          offset: Offset(2, 3),
                        ),
                      ],
                    ),
                    child: TextField(
                      controller: appointmentTimeController,
                      focusNode: timeFocusnode,
                      decoration: InputDecoration(
                        icon: Icon(
                          Icons.access_time_rounded,
                          color: Color(0xff6B463A),
                          size: 22,
                        ),
                        hintText: 'Appointment Timing',
                        hintStyle: TextStyle(
                          color: Color(0xffA58B83),
                          fontSize: 14,
                        ),
                        border: InputBorder.none,
                      ),
                    ),
                  ),

                  SizedBox(height: 20),

                  Container(
                    width: double.infinity,
                    height: 50,
                    decoration: BoxDecoration(
                      color: Color(0xff8F665B),
                      borderRadius: BorderRadius.circular(12),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black12,
                          blurRadius: 6,
                          offset: Offset(2, 3),
                        ),
                      ],
                    ),
                    child: Center(
                      child: GestureDetector(
                        onTap: () {
                          ScaffoldMessenger.of(context).showSnackBar(
                            SnackBar(
                              content: Text(
                                'Thank you, $customerName! Your appointment is confirmed. We look forward to seeing you!',
                              ),
                              duration: const Duration(seconds: 1),
                              backgroundColor: Color(0xff8F665B),
                              behavior: SnackBarBehavior.floating,

                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.all(
                                  Radius.circular(14),
                                ),
                              ),
                            ),
                          );
                        },
                        child: Text(
                          "Confirm Appointment →",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 14,
                            fontWeight: FontWeight.w600,
                            letterSpacing: 0.5,
                          ),
                        ),
                      ),
                    ),
                  ),

                  SizedBox(height: 10),

                  Text(
                    "Your details will appear in the preview",
                    style: TextStyle(color: Color(0xffA58B83), fontSize: 11),
                  ),
                ],
              ),
            ),

            SizedBox(width: 40),
            Padding(padding: EdgeInsets.only(top: 30)),
            DataContainer(
              customerName: customerName,
              chooseService: chooseService,
              phoneNumber: phoneNumber,
              appointmentDate: appointmentDate,
              appointmentTime: appointmentTime,
            ),
          ],
        ),
      ),
    );
  }
}

class CustomTextField extends StatelessWidget {
  const CustomTextField({
    super.key,
    required this.hintText,
    required this.focusNode,
    required this.controller,
  });

  final String hintText;
  final FocusNode focusNode;
  final TextEditingController controller;

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: controller,
      focusNode: focusNode,
      decoration: InputDecoration(
        border: OutlineInputBorder(),
        hintText: hintText,
      ),
    );
  }
}
