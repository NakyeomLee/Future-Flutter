import 'package:flutter/material.dart';
import 'package:mockapp/future_body.dart';

// Riverpod 없이 통신 데이터 가져오기
class FuturePage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: FutureBody(),
    );
  }
}