import 'package:flutter/material.dart';

class HomeAppBar extends StatelessWidget {
  const HomeAppBar({super.key, required void Function() onThemeToggle, required bool isDarkMode});

  @override
  
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 10.0), // Adjusted padding to be closer to the top
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            "E-book",
            style: Theme.of(context)
                .textTheme
                .headlineMedium
                ?.copyWith(
                  color: Theme.of(context).colorScheme.background,
                ),
          ),
          CircleAvatar(
            backgroundColor: Theme.of(context).colorScheme.background,
            child: Text(
              "S",
              style: TextStyle(
                color: Colors.black,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
