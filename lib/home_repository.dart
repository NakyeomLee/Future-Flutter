// srp (이 클래스의 책임) : 데이터를 가져오는 곳 (휴대폰 디바이스(파일), 휴대폰 DB, Firebase(외부 서버), 내 서버, 공공 데이터 서버)

class HomeRepository {

  const HomeRepository(); // new 여러번 안하게 const

  Future<List<int>> getList() async {
    
    List<int> response = await Future.delayed(Duration(seconds: 3), () {
      // 3초후에 실행됨
      return [1, 2, 3, 4];
    });

    return response;
  }

  Future<int> getOne() async {
    int response = await Future.delayed(Duration(seconds: 3), () {
      // 3초후에 실행됨
      return 5;
    });

    return response;
  }
}