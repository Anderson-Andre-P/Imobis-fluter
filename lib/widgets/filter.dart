import 'package:flutter/material.dart';
import 'package:imobis/contants.dart';

class Filter extends StatefulWidget {
  const Filter({super.key});

  @override
  State<Filter> createState() => _FilterState();
}

class _FilterState extends State<Filter> {
  // var selectedRange = RangeValues(400, 1000);
  RangeValues _currentRangeValues = const RangeValues(70000, 1000000);
  // RangeValues _currentRangeAreas = const RangeValues(5000);
  double _currentRangeAreas = 5000;

  bool isCheckedOne = false;
  bool isCheckedTwo = false;
  bool isCheckedThree = false;

  bool active_0 = true;
  bool active_1 = false;
  bool active_2 = false;
  bool active_3 = false;
  bool active_4 = true;
  bool active_5 = false;
  bool active_6 = false;
  bool active_7 = false;

  Color getColor(Set<MaterialState> states) {
    const Set<MaterialState> interactiveStates = <MaterialState>{
      MaterialState.pressed,
      MaterialState.hovered,
      MaterialState.focused,
    };
    if (states.any(interactiveStates.contains)) {
      return blue;
    }
    return blue;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(right: 24, left: 24, top: 32, bottom: 24),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: const [
              Text(
                "Filtre",
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  color: title,
                ),
              ),
              SizedBox(
                width: 8,
              ),
              Text(
                "suas buscas",
                style: TextStyle(
                  fontSize: 24,
                  color: title,
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 16,
          ),
          Row(
            children: const [
              Text(
                "Preço",
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  color: title,
                ),
              ),
            ],
          ),
          RangeSlider(
            values: _currentRangeValues,
            min: 70000,
            max: 1000000,
            divisions: 100,
            labels: RangeLabels(
              'R\$${_currentRangeValues.start.round()}',
              'R\$${_currentRangeValues.end.round()}',
            ),
            onChanged: (RangeValues values) {
              setState(() {
                _currentRangeValues = values;
              });
            },
            activeColor: lightBlue,
            inactiveColor: grey,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: const [
              Text(
                r"R$70.000,00",
                style: TextStyle(
                  fontSize: 14,
                  color: darkTypography,
                ),
              ),
              Text(
                r"R$1.000.000,00",
                style: TextStyle(
                  fontSize: 14,
                  color: darkTypography,
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 16,
          ),
          Row(
            children: const [
              Text(
                "Área",
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  color: title,
                ),
              ),
            ],
          ),
          Slider(
            value: _currentRangeAreas,
            min: 0,
            max: 5000,
            divisions: 100,
            label: '${_currentRangeAreas.round()}m²',
            // ignore: non_constant_identifier_names
            onChanged: (RangeValuesArea) {
              setState(() {
                _currentRangeAreas = RangeValuesArea;
              });
            },
            activeColor: lightBlue,
            inactiveColor: grey,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: const [
              Text(
                r"5000 m²",
                style: TextStyle(
                  fontSize: 14,
                  color: darkTypography,
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 16,
          ),
          const Text(
            "Quartos",
            style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.bold,
              color: title,
            ),
          ),
          const SizedBox(
            height: 16,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              buildOption(0, "Todos", active_0),
              buildOption(1, "1", active_1),
              buildOption(2, "2", active_2),
              buildOption(3, "3+", active_3),
            ],
          ),
          const SizedBox(
            height: 16,
          ),
          const Text(
            "Banheiros",
            style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.bold,
              color: title,
            ),
          ),
          const SizedBox(
            height: 16,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              buildOption(4, "Todos", active_4),
              buildOption(5, "1", active_5),
              buildOption(6, "2", active_6),
              buildOption(7, "3+", active_7),
            ],
          ),
          const SizedBox(
            height: 16,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Checkbox(
                    checkColor: background,
                    fillColor: MaterialStateProperty.resolveWith(getColor),
                    value: isCheckedOne,
                    onChanged: (bool? value) {
                      setState(() {
                        isCheckedOne = value!;
                      });
                    },
                  ),
                  const Text(
                    "Piscina",
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.normal,
                      color: darkTypography,
                    ),
                  ),
                ],
              ),
              Row(
                children: [
                  Checkbox(
                    checkColor: background,
                    fillColor: MaterialStateProperty.resolveWith(getColor),
                    value: isCheckedTwo,
                    onChanged: (bool? value) {
                      setState(() {
                        isCheckedTwo = value!;
                      });
                    },
                  ),
                  const Text(
                    "Garagem",
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.normal,
                      color: darkTypography,
                    ),
                  ),
                ],
              ),
              Row(
                children: [
                  Checkbox(
                    checkColor: background,
                    fillColor: MaterialStateProperty.resolveWith(getColor),
                    value: isCheckedThree,
                    onChanged: (bool? value) {
                      setState(() {
                        isCheckedThree = value!;
                      });
                    },
                  ),
                  const Text(
                    "Sauna",
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.normal,
                      color: darkTypography,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget buildOption(int index, String text, bool selected) {
    return GestureDetector(
      onTap: () {
        setState(() {
          active_0 = !active_0;
        });
        // if (index == 0) {
        //   setState(() {
        //     active_0 = !active_0;
        //   });
        // } else if (index == 1) {
        //   setState(() {
        //     active_1 = !active_1;
        //   });
        // } else if (index == 2) {
        //   setState(() {
        //     active_2 = !active_2;
        //   });
        // } else {
        //   setState(() {
        //     active_3 = !active_3;
        //   });
        // }
      },
      child: Container(
        height: 45,
        width: 65,
        decoration: BoxDecoration(
          color: selected ? lightBlue : Colors.transparent,
          borderRadius: const BorderRadius.all(
            Radius.circular(5),
          ),
          border: Border.all(
            width: selected ? 0 : 1,
            color: grey,
          ),
        ),
        child: Center(
          child: Text(
            text,
            style: TextStyle(
              color: selected ? background : darkTypography,
              fontSize: 14,
            ),
          ),
        ),
      ),
    );
  }
}
