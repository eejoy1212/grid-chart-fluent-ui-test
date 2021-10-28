import 'package:fluent_ui_test/chart_page.dart';
import 'package:flutter/material.dart';

class GridViewTest extends StatelessWidget {
  const GridViewTest({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('차트 그리드 테스트'),
          centerTitle: true,
        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ChartPage(),
            Flexible(
              child: Row(
                children: [
                  Flexible(
                    child: Center(
                      child: GridView.count(
                        mainAxisSpacing: 20,
                        scrollDirection: Axis.horizontal,
                        shrinkWrap: true,
                        //컬럼속에 그리드뷰 넣으면 에러.,.? 뷰포트뭐시기
                        crossAxisCount: 3,
                        children: List.generate(8, (index) {
                          return Center(
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Text('차트${index + 1}'),
                                Spacer(),
                                ChartPage(),
                              ],
                            ),
                            // child: Text(
                            //   '차트${index + 1}',
                            // ),
                          );
                        }),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ));
  }
}
