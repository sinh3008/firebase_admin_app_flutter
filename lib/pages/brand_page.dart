import 'package:firebase_admin_app_flutter/providers/telescope_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class BrandPage extends StatelessWidget {
  static const String routeName = 'brand';

  const BrandPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('All Brands'),
        centerTitle: true,
      ),
      body: Consumer<TelescopeProvider>(
        builder: (BuildContext context, provider, Widget? child) {
          return provider.brandList.isEmpty
              ? Center(
                  child: Text(
                    'No Brand Found',
                    style: Theme.of(context).textTheme.titleLarge,
                  ),
                )
              : ListView.builder(
                  itemCount: provider.brandList.length,
                  itemBuilder: (context, index) {
                    final brand = provider.brandList[index];
                    return ListTile(
                      title: Text(brand.name),
                    );
                  },
                );
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: (){

        },
        child: const Icon(Icons.add),
      ),
    );
  }
}
