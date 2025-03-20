import 'package:flutter/material.dart';
import 'package:shopy/core/utils/constans.dart';
import 'package:shopy/core/widget/custom_button_widget.dart';
import 'package:shopy/featured/home/widget/category_widget.dart';
import 'package:shopy/featured/home/widget/details_container_widget.dart';
import 'package:shopy/featured/home/widget/search_and_cmera_widget.dart';

class HomeView extends StatelessWidget {
  HomeView({super.key});

  final PageController _pageController = PageController();
  final ValueNotifier<int> _currentPage =
      ValueNotifier<int>(0); // استخدام ValueNotifier

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: Appcolor.Ktextcolor,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        // mainAxisAlignment: MainAxisAlignment.center,
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

              // محتويات الشاشة
              Padding(
                padding: const EdgeInsets.only(top: 50, left: 16, right: 16),
                child: Column(
                  children: [
                    // شريط البحث + زر الكاميرا
                    SearchAndCmeraWidget(),

                    const SizedBox(height: 20),

                    // الكونتينر الأبيض مع الـ PageView
                    SizedBox(
                      height: 180,
                      child: PageView.builder(
                        controller: _pageController,
                        itemCount: 3,
                        onPageChanged: (index) {
                          _currentPage.value =
                              index; // تحديث قيمة ValueNotifier
                        },
                        itemBuilder: (context, index) =>
                            const DetailsContainerWidget(),
                      ),
                    ),

                    const SizedBox(height: 10),

                    // نقاط الـ Indicator باستخدام ValueListenableBuilder
                    ValueListenableBuilder<int>(
                      valueListenable: _currentPage,
                      builder: (context, value, child) {
                        return Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: List.generate(
                            3,
                            (index) => _buildIndicator(index == value),
                          ),
                        );
                      },
                    ),
                  ],
                ),
              ),
            ],
          ),
          const SizedBox(height: 30),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 25),
            child: CategoryList(),
          ),
          Expanded(
            child: Container(
              height: 230,
              width: MediaQuery.of(context).size.width,
              decoration: const BoxDecoration(
                color: Appcolor.Khintcolor,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(20),
                  topRight: Radius.circular(20),
                ),
              ),
              child: Column(
                children: [
                  const SizedBox(height: 20),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 16, vertical: 15),
                    child: const Row(
                      children: [
                        Text("New Product"),
                        Spacer(),
                        CustomButtonWidget(
                            backgroundColor: Appcolor.kPColor,
                            textColor: Colors.white,
                            textTilte: "View all",
                            width: 100)
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 200, // ارتفاع الكونتينر الواحد
                    child: ListView.builder(
                      scrollDirection: Axis.horizontal, // سكرول أفقي
                      itemCount: 10, // عدد المنتجات
                      itemBuilder: (context, index) {
                        return Padding(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 8), // تباعد بين العناصر
                          child: ProductContainer(), // عرض المنتج
                        );
                      },
                    ),
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  // Widget خاص بالنقاط
  Widget _buildIndicator(bool isActive) {
    return AnimatedContainer(
      duration: Duration(milliseconds: 300),
      margin: EdgeInsets.symmetric(horizontal: 4),
      height: 6,
      width: isActive ? 16 : 6,
      decoration: BoxDecoration(
        color: isActive ? Colors.black : Colors.grey,
        borderRadius: BorderRadius.circular(3),
      ),
    );
  }
}

class ProductContainer extends StatelessWidget {
  const ProductContainer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 140,
      // height: 230,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20), color: Colors.white),
      child: Column(
        children: [
          Image.asset(
            "assets/images/1.png",
            height: 120,
            width: 120,
          ),
          Text("name"),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
                Text("170.0\$"),
                Spacer(),
                Icon(
                  Icons.star,
                  color: Colors.amberAccent,
                ),
                Text("4.5")
              ],
            ),
          ),
        ],
      ),
    );
  }
}
