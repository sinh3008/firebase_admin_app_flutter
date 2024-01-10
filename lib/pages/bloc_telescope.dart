import 'package:firebase_admin_app_flutter/bloc/telescope_bloc.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'telescope_details_page.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class BlocTelescope extends StatelessWidget {
  static const String routeName = 'bloctelescope';

  const BlocTelescope({super.key});

  @override
  Widget build(BuildContext context) {
    return const TelescopePageBloc();
  }
}

class TelescopePageBloc extends StatefulWidget {
  static const String routeName = 'telescopepagebloc';

  const TelescopePageBloc({super.key});

  @override
  State<TelescopePageBloc> createState() => _TelescopePageBlocState();
}

class _TelescopePageBlocState extends State<TelescopePageBloc> {

  @override
  void initState() {
    context.read<TelescopeBloc>().add(const TelescopeEvent.getAllTelescopes());
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Telescopes'),
      ),
      body: BlocBuilder<TelescopeBloc, TelescopeState>(
        builder: (BuildContext context, TelescopeState state) {
          return state.when(
            initial: () => Container(),
            loading: () => const CircularProgressIndicator(),
            loadingAllTelescopes: (list) => ListView.builder(
              itemCount: list.length,
              itemBuilder: (BuildContext context, int index) {
                final telescope = list[index];
                return InkWell(
                  onTap: () {
                    context.goNamed(TelescopeDetailsPage.routeName,
                        extra: telescope.id);
                  },
                  child: Card(
                    elevation: 0,
                    color: Colors.transparent,
                    child: Row(
                      children: [
                        CachedNetworkImage(
                          width: 100,
                          height: 100,
                          fit: BoxFit.cover,
                          imageUrl: telescope.thumbnail.downloadUrl,
                          placeholder: (context, url) => const Center(
                            child: CircularProgressIndicator(),
                          ),
                          errorWidget: (context, url, error) =>
                              const Icon(Icons.error),
                        ),
                        Expanded(
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  telescope.brand.name,
                                  style: const TextStyle(
                                    fontSize: 16,
                                  ),
                                ),
                                Text(
                                  telescope.model,
                                  style: const TextStyle(
                                      color: Colors.grey,
                                      overflow: TextOverflow.ellipsis),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                );
              },
            ),
            error: () => const Center(
              child: Text('Null Data'),
            ), addTelescopeSuccess: () => Container(),
          );
        },
      ),
    );
  }
}
