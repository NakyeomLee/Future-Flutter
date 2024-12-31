// SRP : 데이터를 가져오는 곳 (휴대폰 디바이스(파일), 휴대폰 DB, Firebase(외부서버), 내서버, 공공데이터서버)

import 'package:dio/dio.dart';
import 'package:logger/logger.dart';
import 'package:mockapp/post_page_vm.dart';

import 'http_util.dart';

class PostRepository {

  const PostRepository();

  // 오브젝트를 반환하는 경우
  Future<Post> getPost() async{
    Response response = await dio.get("/posts/1"); // Map으로 받음(외우기)
    Map<String, dynamic> body = response.data;
    return Post.fromMap(body);
  }

  // 컬렉션을 반환하는 경우
  Future<List<Post>> getPostList() async{
    Response response = await dio.get("/posts"); // Map으로 받음(외우기)
    List<dynamic> list = response.data;
    return list.map((e) => Post.fromMap(e)).toList();
  }
}