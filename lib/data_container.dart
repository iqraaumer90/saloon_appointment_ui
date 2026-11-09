import 'package:flutter/material.dart';

class DataContainer extends StatelessWidget {
  const DataContainer({
    super.key,
    required this.customerName,
    required this.chooseService,
    required this.phoneNumber,
    required this.appointmentDate,
    required this.appointmentTime,
  });

  final String customerName;
  final String chooseService;
  final String phoneNumber;
  final String appointmentDate;
  final String appointmentTime;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 400,
      padding: EdgeInsets.all(25),
      decoration: BoxDecoration(
        color: Color(0xff6B463A),
        borderRadius: BorderRadius.circular(30),
        boxShadow: [
          BoxShadow(
            color: Colors.black12,
            blurRadius: 10,
            offset: Offset(0, 5),
          ),
        ],
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'LUMIERE',
                style: TextStyle(
                  color: Color(0xffE9C8BD),
                  fontSize: 11,
                  fontWeight: FontWeight.bold,
                  letterSpacing: 3,
                ),
              ),
              Icon(Icons.spa_outlined, color: Color(0xffE9C8BD), size: 23),
            ],
          ),

          SizedBox(height: 20),

          Text(
            'Appointment Preview!',
            style: TextStyle(
              color: Colors.white,
              fontSize: 24,
              fontWeight: FontWeight.w600,
            ),
          ),

          SizedBox(height: 20),

          Text(
            'Customer Name',
            style: TextStyle(color: Color(0xffE9C8BD), fontSize: 12),
          ),

          SizedBox(height: 3),

          Text(
            customerName,
            style: TextStyle(color: Colors.white, fontSize: 16),
          ),

          SizedBox(height: 15),

          Text(
            'Choose Service',
            style: TextStyle(color: Color(0xffE9C8BD), fontSize: 12),
          ),

          SizedBox(height: 3),

          Text(
            chooseService,
            style: TextStyle(color: Colors.white, fontSize: 16),
          ),

          SizedBox(height: 15),

          Text(
            'Phone Number',
            style: TextStyle(color: Color(0xffE9C8BD), fontSize: 12),
          ),

          SizedBox(height: 3),

          Text(
            phoneNumber,
            style: TextStyle(color: Colors.white, fontSize: 16),
          ),

          SizedBox(height: 15),

          Text(
            'Appointment Date',
            style: TextStyle(color: Color(0xffE9C8BD), fontSize: 12),
          ),

          SizedBox(height: 3),

          Text(
            appointmentDate,
            style: TextStyle(color: Colors.white, fontSize: 16),
          ),

          SizedBox(height: 15),

          Text(
            'Appointment Timing',
            style: TextStyle(color: Color(0xffE9C8BD), fontSize: 12),
          ),

          SizedBox(height: 3),

          Text(
            appointmentTime,
            style: TextStyle(color: Colors.white, fontSize: 16),
          ),
          SizedBox(height: 15),

          Text(
            'Stylist',
            style: TextStyle(color: Color(0xffE9C8BD), fontSize: 12),
          ),

          SizedBox(height: 3),

          Text(
            'Kashee Rose',
            style: TextStyle(color: Colors.white, fontSize: 16),
          ),

          SizedBox(height: 10),

          Text(
            'Duration',
            style: TextStyle(color: Color(0xffE9C8BD), fontSize: 12),
          ),

          SizedBox(height: 3),

          Text(
            '60 Minutes',
            style: TextStyle(color: Colors.white, fontSize: 16),
          ),

          SizedBox(height: 10),

          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Total Amount',
                style: TextStyle(color: Color(0xffE9C8BD), fontSize: 13),
              ),

              Text(
                'Rs. 2,500',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 17,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),

          SizedBox(height: 15),

          Center(
            child: Text(
              "Your beauty moment awaits.",
              style: TextStyle(color: Color(0xffE9C8BD), fontSize: 11),
            ),
          ),
        ],
      ),
    );
  }
}
