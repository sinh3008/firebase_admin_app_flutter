import 'package:firebase_admin_app_flutter/providers/telescope_provider.dart';
import 'package:firebase_admin_app_flutter/utils/widget_functions.dart';
import 'package:flutter/material.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
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
                      title: Text(
                        brand.name,
                        style: Theme.of(context)
                            .textTheme
                            .bodyLarge!
                            .copyWith(color: Colors.white),
                      ),
                    );
                  },
                );
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          showSingleTextInputDialog(
            context: context,
            title: 'Add Brand',
            onSubmit: (value) {
              EasyLoading.show(status: 'Please wait');
              Provider.of<TelescopeProvider>(context, listen: false)
                  .addBrand(value)
                  .then((value) {
                EasyLoading.dismiss();
                showMsg(context, 'Brand Added');
              });
            },
          );
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}
