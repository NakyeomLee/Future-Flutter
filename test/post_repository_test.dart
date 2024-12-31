import 'package:mockapp/post_repository.dart';

void main() async {
  PostRepository repo = PostRepository();
  await repo.getPostList();
}