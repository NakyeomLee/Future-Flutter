
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:mockapp/post_page_vm.dart';

class PostBody extends ConsumerWidget {

  @override
  Widget build(BuildContext context, WidgetRef ref) {

    Post? model = ref.watch(postProvider);

    if (model == null) {
      return Center(child: CircularProgressIndicator());

    } else {
      return Column(
        children: [
          Text("id : ${model.id}"),
          Text("userId : ${model.userId}"),
          Text("title : ${model.title}"),
          Text("body : ${model.body}"),
          Row(),
        ],
      );
    }
  }
}