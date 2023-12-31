import 'package:firebase_admin_app_flutter/models/dashboard_model.dart';
import 'package:firebase_admin_app_flutter/utils/color.dart';
import 'package:flutter/material.dart';

class DashboardItemView extends StatelessWidget {
  final DashboardModel model;
  final Function(String) onPress;

  const DashboardItemView(
      {super.key, required this.model, required this.onPress});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      highlightColor: Colors.transparent,
      splashColor: Colors.transparent,
      onTap: () => onPress(model.routeName),
      child: Card(
        color: kBgItem,
        // color.dart: const Color(0xfff1eee9),
        elevation: 0,
        shape: RoundedRectangleBorder(
          borderRadius:
              BorderRadius.circular(30.0), // Adjust the radius value as needed
        ),
        child: Center(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Icon(model.iconData, size: 50, color: Colors.black),
              const SizedBox(height: 10),
              Text(
                model.title,
                style: Theme.of(context).textTheme.titleMedium!.copyWith(
                      fontWeight: FontWeight.bold,
                    ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
