import 'package:flutter/material.dart';
import 'package:mockapp/home_repository.dart';

class FutureBody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    HomeRepository repo = const HomeRepository();

    return Column(
      children: [
        FutureBuilder(
          future: repo.getOne(),
          builder: (context, snapshot) {

            if (snapshot.hasData) {
              return Center(child: Text("1", style: TextStyle(fontSize: 50)));
            } else {
              return CircularProgressIndicator(); // 동그라미 모양으로 빙글빙글 도는 로딩 표시
            }

          },
        ),
        Expanded(
          child: ListView.builder(
              itemCount: 4,
              itemBuilder: (context, index) {
                return ListTile(
                    leading: Text("${index + 1}"), title: Text("내용"));
              }),
        ),
      ],
    );
  }
}
