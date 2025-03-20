import 'package:flutter/material.dart';

class CategoryList extends StatelessWidget {
  const CategoryList({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 100, // ارتفاع العنصر بالكامل
      child: ListView(
        scrollDirection: Axis.horizontal, // تفعيل الـ Scroll الأفقي
        children: const [
          CategoryItem(icon: Icons.man, label: "Men"),
          CategoryItem(icon: Icons.woman, label: "Women"),
          CategoryItem(icon: Icons.child_care, label: "Kids"),
          CategoryItem(icon: Icons.percent, label: "Sale"),
        ],
      ),
    );
  }
}

class CategoryItem extends StatelessWidget {
  final IconData icon;
  final String label;

  const CategoryItem({super.key, required this.icon, required this.label});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            height: 60,
            width: 60,
            decoration: BoxDecoration(
              color: Colors.blue.shade100, // لون الخلفية
              borderRadius: BorderRadius.circular(16), // تدوير الزوايا
            ),
            child: Icon(icon, color: Colors.blue, size: 30), // الأيقونة
          ),
          const SizedBox(height: 5),
          Text(
            label,
            style: const TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
          ),
        ],
      ),
    );
  }
}
