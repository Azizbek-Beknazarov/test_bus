import 'package:flutter/material.dart';

class AppBarWidget extends StatelessWidget implements PreferredSizeWidget {
  const AppBarWidget({super.key, required this.onPressed});

  final VoidCallback? onPressed;

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: const Text("Поиск поездок"),
      surfaceTintColor: Colors.white,
      actions: [
        IconButton(
          padding: const EdgeInsets.only(right: 8),
          onPressed: onPressed,
          icon: const Icon(Icons.cleaning_services),
        ),
      ],
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
