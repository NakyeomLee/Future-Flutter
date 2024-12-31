import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:mockapp/post_repository.dart';

class Post {
  int userId;
  int id;
  String title;
  String body;

  // 생성자
  Post(this.userId, this.id, this.title, this.body);

  // 생성자 (DTO에 이름있는 생성자 만드는거 생각하면 이해하기 쉬움)
  Post.fromMap(Map<String, dynamic> map)
      : userId = map["userId"],
      id = map["id"],
      title = map["title"],
      body = map["body"];
}

final postProvider = NotifierProvider<PostPageVM, Post?>(() {
  return PostPageVM();
});

class PostPageVM extends Notifier<Post?> {

  PostRepository repo = const PostRepository();

  @override
  Post? build() {
    // 상태 초기화 시작
    init();

    // 상태 null 초기화
    return null;
  }

  Future<void> init() async {
    Post post = await repo.getPost(); // 오래걸리는 일은 await해서 받기
    state = post;
  }
}