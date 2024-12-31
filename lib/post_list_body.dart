import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:mockapp/post_list_page_vm.dart';
import 'package:mockapp/post_page_vm.dart';

class PostListBody extends ConsumerWidget {
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    List<Post2>? models = ref.watch(postListProvider);

    if (models == null) {
      return Center(child: CircularProgressIndicator());
    } else {
      return ListView.builder(
        itemCount: 4,
        itemBuilder: (context, index) {
          return ListTile(
            leading: Text("${models[index].id}"),
            title: Text("${models[index].title}"),
            subtitle: Text("${models[index].body}"),
            trailing: Text("유저아이디 ${models[index].userId}"),
          );
        },
      );
    }
  }
}