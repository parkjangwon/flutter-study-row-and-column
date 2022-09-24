import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
          bottom: false,
      child: Container(
        color: Colors.black,
        // height: MediaQuery.of(context).size.height, // 디바이스의 최대 높이
        // width: MediaQuery.of(context).size.width, // 디바이스의 최대 넓이
        child: Column(
          // Column와 Row는 호환가능
          // mainAxisAlignment - 주측 정렬
          // start - 시작
          // end - 종료
          // center - 가운데
          // spaceBetween - 끝과 끝 정렬, 위젯과 웨젯 사이가 동일하게 배치
          // spaceEvenly - 위젯과 위젯 사이가 동일하게 배치, 단 끝과 끝에 위젯이 있다고 가정
          // spaceAround - spaceEvenly + 끝과 끝의 간격은 1/2
          mainAxisAlignment: MainAxisAlignment.start,
          // crossAxisAlignment - 반대측 정렬
          // start - 시작
          // end - 끝
          // center - 가운데 (default)
          // stretch - 끝까지 늘리기 (강제)
          crossAxisAlignment: CrossAxisAlignment.start,
          // MainAxisSize - 주측의 크기
          // max - 최대
          // min - 최소 (칠드런이 있는 영역까지만)
          mainAxisSize: MainAxisSize.max,
          children: [
            // Expended / Flexible - Row or Column의 children에서만 사용 가능
            Flexible(
              flex: 3,
              child: Container(
                color: Colors.red,
                width: 50.0,
                height: 50.0,
              ),
            ),
            Expanded(
              child: Container(
                color: Colors.orange,
                width: 50.0,
                height: 50.0,
              ),
            ),
            Expanded(
              child: Container(
                color: Colors.yellow,
                width: 50.0,
                height: 50.0,
              ),
            ),
            Expanded(
              child: Container(
                color: Colors.green,
                width: 50.0,
                height: 50.0,
              ),
            )
          ],
        ),
      ),
    ));
  }
}
