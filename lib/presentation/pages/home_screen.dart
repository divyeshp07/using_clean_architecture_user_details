import 'package:clean_archi_user_details/presentation/providers/user_provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class HomeScreen extends ConsumerWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: const Text('using-clean-archi-userdetals'),
        ),
        body: ref.watch(getUserProvider).when(
              data: (data) => ListView.builder(
                itemCount: data.length,
                itemBuilder: (context, index) => Card(
                  child: ListTile(
                    title: Text(data[index].firstName),
                    leading: CircleAvatar(
                      child: Text(data[index].id.toString()),
                    ),
                    trailing: Text("Age:${data[index].age}"),
                    subtitle: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(data[index].phone),
                        Text(data[index].gender),
                      ],
                    ),
                  ),
                ),
              ),
              error: (error, stackTrace) => const Center(
                child: Text('Unknown Error'),
              ),
              loading: () => const Center(
                child: CircularProgressIndicator(),
              ),
            ));
  }
}
