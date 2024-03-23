import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:intl/intl.dart';
import 'package:test_bus/features/presentation/components/custom_text_field_component.dart';

class InputFormsWidget extends StatelessWidget {
  const InputFormsWidget({
    super.key,
    required this.controllerDeparture,
    required this.controllerDestination,
    required this.controllerDate,
  });

  final TextEditingController controllerDeparture;
  final TextEditingController controllerDestination;
  final TextEditingController controllerDate;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        children: [
          CustomTextFieldComponent(
            controller: controllerDeparture,
            hintText: "Откуда",
          ),
          const Gap(16),
          CustomTextFieldComponent(
            controller: controllerDestination,
            hintText: "Куда",
          ),
          const Gap(16),
          CustomTextFieldComponent(
            readOnly: true,
            onTap: () async {
              DateTime? selectedDate = await showDatePicker(
                context: context,
                initialDate: DateTime.now(),
                firstDate: DateTime.now(),
                lastDate: DateTime(2100),
              );
              if (selectedDate != null) {
                controllerDate.text =
                    DateFormat('yyyy-MM-dd').format(selectedDate);
              }
            },
            controller: controllerDate,
            hintText: "Date",
            icon: Icons.date_range,
          ),
        ],
      ),
    );
  }
}
