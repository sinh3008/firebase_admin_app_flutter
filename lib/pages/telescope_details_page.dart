import 'package:cached_network_image/cached_network_image.dart';
import 'package:firebase_admin_app_flutter/models/telescope.dart';
import 'package:firebase_admin_app_flutter/providers/telescope_provider.dart';
import 'package:firebase_admin_app_flutter/utils/helper_functions.dart';
import 'package:flutter/material.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:intl/number_symbols_data.dart';
import 'package:provider/provider.dart';

import '../customwidgets/image_holder_view.dart';
import '../utils/constants.dart';
import '../utils/widget_functions.dart';

class TelescopeDetailsPage extends StatefulWidget {
  static const String routeName = 'telescopedetails';
  final String id;

  const TelescopeDetailsPage({super.key, required this.id});

  @override
  State<TelescopeDetailsPage> createState() => _TelescopeDetailsPageState();
}

class _TelescopeDetailsPageState extends State<TelescopeDetailsPage> {
  late Telescope telescope;
  late TelescopeProvider provider;

  @override
  void didChangeDependencies() {
    provider = Provider.of<TelescopeProvider>(context);
    telescope = provider.findTelescopeById(widget.id);
    super.didChangeDependencies();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          telescope.model,
          style: const TextStyle(overflow: TextOverflow.ellipsis),
        ),
      ),
      body: ListView(
        children: [
          CachedNetworkImage(
            imageUrl: telescope.thumbnail.downloadUrl,
            width: double.infinity,
            height: 200,
            placeholder: (context, url) => const Center(
              child: CircularProgressIndicator(),
            ),
            errorWidget: (context, url, error) => const Icon(Icons.error),
          ),
          SizedBox(
            width: MediaQuery.of(context).size.width,
            height: 100,
            child: Card(
              child: ListView(
                padding: const EdgeInsets.all(8.0),
                scrollDirection: Axis.horizontal,
                children: [
                  FloatingActionButton.small(
                    onPressed: () {},
                    tooltip: 'Add additional image',
                    child: const Icon(Icons.add),
                  ),
                  if (telescope.additionalImage.isEmpty)
                    Padding(
                      padding: const EdgeInsets.only(left: 16),
                      child: Center(
                        child: Text(
                          'Add other image',
                          style: Theme.of(context).textTheme.titleMedium!,
                        ),
                      ),
                    ),
                  ...telescope.additionalImage.map((e) =>
                      ImageHolderView(imageModel: e, onImagePressed: () {}))
                ],
              ),
            ),
          ),
          ElevatedButton(
            onPressed: () {},
            child: Text(telescope.description == null
                ? 'Add Description'
                : 'Show Description'),
          ),
          ListTile(
            title: Text(
              telescope.brand.name,
              style: const TextStyle(color: Colors.white),
            ),
            subtitle: Text(
              telescope.model,
              style: const TextStyle(color: Colors.white30),
            ),
          ),
          ListTile(
            title: Text(
              'Sale Price (with Discount): $currencySymbol${priceAfterDiscount(telescope.price, telescope.discount).toStringAsFixed(0)}',
              style: const TextStyle(color: Colors.white),
            ),
            subtitle: Text(
              'Original Price: $currencySymbol${telescope.price}',
              style: const TextStyle(color: Colors.white30),
            ),
            trailing: IconButton(
              onPressed: () {
                showSingleTextInputDialog(
                  context: context,
                  title: 'Edit Price',
                  onSubmit: (value) {
                    EasyLoading.show(status: 'Please Wait');
                    provider
                        .updateTelescopeField(
                            telescope.id!, 'price', num.parse(value))
                        .then((value) {
                      EasyLoading.dismiss();
                      showMsg(context, 'Price Updated');
                    });
                  },
                );
              },
              icon: const Icon(Icons.edit),
            ),
          ),
          ListTile(
            title: Text(
              'Discount: ${telescope.discount}%',
              style: const TextStyle(color: Colors.white),
            ),
            trailing: IconButton(
              onPressed: () {
                showSingleTextInputDialog(
                  context: context,
                  title: 'Edit Discount',
                  onSubmit: (value) {
                    EasyLoading.show(status: 'Please Wait');
                    provider
                        .updateTelescopeField(
                            telescope.id!, 'discount', num.parse(value))
                        .then((value) {
                      EasyLoading.dismiss();
                      showMsg(context, 'Discount Updated');
                    });
                  },
                );
              },
              icon: const Icon(Icons.edit),
            ),
          ),
          ListTile(
            title: Text(
              'Stock: ${telescope.stock}',
              style: const TextStyle(color: Colors.white),
            ),
            trailing: IconButton(
              onPressed: () {
                showSingleTextInputDialog(
                  context: context,
                  title: 'Edit Stock',
                  onSubmit: (value) {
                    EasyLoading.show(status: 'Please Wait');
                    provider
                        .updateTelescopeField(
                            telescope.id!, 'stock', num.parse(value))
                        .then((value) {
                      EasyLoading.dismiss();
                      showMsg(context, 'Stock Updated');
                    });
                  },
                );
              },
              icon: const Icon(Icons.edit),
            ),
          )
        ],
      ),
    );
  }
}
