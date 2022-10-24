import 'package:flutter/material.dart';
import 'package:imobis/contants.dart';

class SelectCategory extends StatefulWidget {
  const SelectCategory({super.key});

  @override
  State<SelectCategory> createState() => _SelectCategoryState();
}

class _SelectCategoryState extends State<SelectCategory> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: background,
      height: 42.0,
      width: double.infinity,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: [
          categoryButton(0.0, 10.0, Icons.check, "Todos"),
          categoryButton(0.0, 10.0, Icons.house_rounded, "Casas"),
          categoryButton(0.0, 10.0, Icons.apartment_rounded, "Apartamentos"),
          categoryButton(0.0, 10.0, Icons.villa_rounded, "Repúblicas"),
          categoryButton(10.0, 10.0, Icons.apartment_rounded, "Kitnets"),
        ],
      ),
    );
  }
}

Widget categoryButton(
    double marginRight, double marginLeft, IconData icon, String? text) {
  return Container(
    constraints: const BoxConstraints(
      maxWidth: double.infinity,
    ),
    margin: EdgeInsets.only(
      top: 0.0,
      // bottom: 18.0,
      right: marginRight,
      left: marginLeft,
    ),
    padding: const EdgeInsets.all(10.0),
    // width: 200.0,
    // height: 20.0,
    decoration: BoxDecoration(
      border: Border.all(
        color: grey,
      ),
      borderRadius: BorderRadius.circular(10.0),
      color: background,
    ),
    child: InkWell(
      onTap: () {},
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Icon(
            icon,
            size: 24.0,
            color: lightBlue,
          ),
          const SizedBox(
            width: 6.0,
          ),
          Text(
            "$text",
            softWrap: true,
            overflow: TextOverflow.ellipsis,
            style: const TextStyle(
              color: darkTypography,
            ),
          ),
        ],
      ),
    ),
  );
}
