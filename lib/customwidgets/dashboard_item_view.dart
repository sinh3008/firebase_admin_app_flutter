import 'package:flutter/material.dart';
import 'package:firebase_admin_app_flutter/models/dashboard_model.dart';

class DashboardItemView extends StatelessWidget {
  final DashboardModel model;
  final Function(String) onPress;

  const DashboardItemView({
    super.key,
    required this.model,
    required this.onPress,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => onPress(model.routeName),
      child: Card(
        child: Center(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Icon(model.iconData, size: 50, color: Colors.black,),
              const SizedBox(height: 10,),
              Text(model.title, style: Theme.of(context).textTheme.titleLarge,)
            ],
          ),
        ),
      ),
    );
  }
}
