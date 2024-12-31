import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:mockapp/post_repository.dart';

class Post2 {
  int userId;
  int id;
  String title;
  String body;

  Post2(this.userId, this.id, this.title, this.body);

  Post2.fromMap(Map<String, dynamic> map)
      : userId = map["userId"],
        id = map["id"],
        title = map["title"],
        body = map["body"];
}

final postListProvider = NotifierProvider<PostListPageVM, List<Post2>?>(() {
  return PostListPageVM();
});

class PostListPageVM extends Notifier<List<Post2>?> {
  PostRepository repo = const PostRepository();

  @override
  List<Post2>? build() {
    // 상태 초기화 시작
    init();

    // 상태 null 초기화
    return null;
  }

  Future<void> init() async {
    List<Post2> postList = await repo.getPostList();
    state = postList;
  }
}