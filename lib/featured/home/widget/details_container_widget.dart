import 'package:flutter/material.dart';
import 'package:shopy/core/utils/style.dart';
import 'package:shopy/core/widget/custom_button_widget.dart';

class DetailsContainerWidget extends StatelessWidget {
  const DetailsContainerWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 15, vertical: 15),
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
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            // صورة المنتج
            Image.asset(
              "assets/images/1.png",
              height: 140,
              width: 160,
              fit: BoxFit.contain,
            ),

            // النص والزرار
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Popular",
                  style: Styles.textStyle14.copyWith(color: Colors.grey),
                ),
                Text(
                  "Air Max 2090",
                  style:
                      Styles.textStyle14.copyWith(fontWeight: FontWeight.bold),
                ),
                const SizedBox(height: 5),
                CustomButtonWidget(
                  backgroundColor: Colors.black87,
                  textColor: Colors.white,
                  textTilte: "Buy now",
                  width: 90,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
