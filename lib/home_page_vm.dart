import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:mockapp/home_repository.dart';

final homeProvider = NotifierProvider<HomePageVM, int?>(() {
  return HomePageVM();
});

class HomePageVM extends Notifier<int?> {

  HomeRepository repo = const HomeRepository();

  @override
  int? build() { // null일수도 있으니까 타입 뒤에 ?
    // 상태 초기화 시작
    getOne();
    
    // 상태 초기화
    return null;
  }

  Future<void> getOne() async {
    int one = await repo.getOne();
    state = one;
  }
}