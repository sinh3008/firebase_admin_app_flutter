// ignore_for_file: avoid_print

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../providers/user_provider.dart';

class UserListPage extends StatelessWidget {
  static const String routeName = 'users';
  const UserListPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final arg = ModalRoute.of(context)?.settings.arguments;
    final data = arg == null ? null : arg as Map<String, dynamic>;
    print('data $data');
    return Scaffold(
      appBar: AppBar(
        title: const Text('Users'),
      ),
      body: Consumer<UserProvider>(
        builder: (context, provider, child) => ListView.builder(
          itemCount: provider.userList.length,
          itemBuilder: (context, index) {
            final user = provider.userList[index];
            return ListTile(
              // ignore: unnecessary_null_comparison
              title: user == null ? const Text('Null') : Text('${user.email} email'),
              // subtitle: Text('Subscribed on ${getFormattedDate(user.userCreationTime!.toDate())}'),
            );
          },
        ),
      ),
    );
  }
}
