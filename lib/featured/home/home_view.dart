import 'package:flutter/material.dart';
import 'package:shopy/core/utils/constans.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Stack(
            children: [
              // الخلفية الزرقاء
              Container(
                height: 230,
                width: MediaQuery.of(context).size.width,
                decoration: const BoxDecoration(
                  color: Appcolor.kPColor,
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(20),
                    bottomRight: Radius.circular(20),
                  ),
                ),
              ),

              // محتويات الشاشة (البحث، الكاميرا، والكونتينر الأبيض)
              Padding(
                padding: const EdgeInsets.only(top: 50, left: 16, right: 16),
                child: Column(
                  children: [
                    // شريط البحث + زر الكاميرا
                    Row(
                      children: [
                        // صندوق البحث
                        Expanded(
                          child: TextField(
                            decoration: InputDecoration(
                              hintText: "Search",
                              hintStyle: TextStyle(color: Colors.grey.shade400),
                              prefixIcon: Icon(Icons.search,
                                  color: Colors.grey.shade400),
                              filled: true,
                              fillColor: Colors.white,
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(16),
                                borderSide: BorderSide.none,
                              ),
                            ),
                          ),
                        ),
                        const SizedBox(width: 10),
                        // زر الكاميرا
                        Container(
                          height: 50,
                          width: 50,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(16),
                          ),
                          child: IconButton(
                            icon: Icon(Icons.camera_alt,
                                color: Colors.blue, size: 28),
                            onPressed: () {
                              // TODO: إضافة كود فتح الكاميرا هنا
                            },
                          ),
                        ),
                      ],
                    ),

                    const SizedBox(height: 20),

                    // الكونتينر الأبيض
                    Container(
                      height: 145,
                      width: MediaQuery.of(context).size.width * .9,
                      decoration: BoxDecoration(
                        boxShadow: [
                          BoxShadow(
                            blurRadius: 10,
                            spreadRadius: 2,
                            offset: Offset(0, 5),
                            color: Colors.black.withOpacity(0.30),
                          ),
                        ],
                        borderRadius: BorderRadius.circular(16),
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
