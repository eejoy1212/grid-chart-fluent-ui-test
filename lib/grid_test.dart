import 'package:fluent_ui/fluent_ui.dart';
import 'package:fluent_ui_test/chart_page.dart';

class GridViewTest extends StatefulWidget {
  const GridViewTest({Key? key}) : super(key: key);

  @override
  State<GridViewTest> createState() => _GridViewTestState();
}

class _GridViewTestState extends State<GridViewTest> {
  int index = 0;
  @override
  Widget build(BuildContext context) {
    return NavigationView(
      //useArcrylic어케하지?
      appBar: NavigationAppBar(
        backgroundColor: Colors.blue,
        automaticallyImplyLeading: true,
        title: Text('차트 그리드 테스트'),
      ),
      pane: NavigationPane(
          selected: index,
          onChanged: (newIndex) {
            setState(() {
              index = newIndex;
            });
          },
          displayMode: PaneDisplayMode.top,
          items: [
            PaneItem(
              icon: const Icon(FluentIcons.a_a_d_logo),
              title: const Text('메뉴1'),
            ),
            PaneItem(
              icon: const Icon(FluentIcons.accept),
              title: const Text('메뉴2'),
            )
          ]),
      content: NavigationBody(
        // ignore: prefer_const_literals_to_create_immutables
        index: index,

        children: [
          Padding(
            padding: const EdgeInsets.all(20),
            child: ScaffoldPage(
              header: const Text('   차트페이지'),
              content: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Expanded(
                    flex: 2,
                    child: ChartPage(),
                  ),
                  Expanded(
                    flex: 1,
                    child: Row(
                      children: [
                        Flexible(
                          child: GridView.count(
                            shrinkWrap: true,
                            crossAxisCount: 8,
                            children: List.generate(8, (index) {
                              return const Center(
                                child: ChartPage(),
                              );
                            }),
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
          // child: Column(
          //   crossAxisAlignment: CrossAxisAlignment.start,
          //   children: [
          //     // FocusTheme(
          //     //     data: const FocusThemeData(),
          //     //     child: Button(
          //     //       onPressed: () {
          //     //         print('버튼작동');
          //     //       },
          //     //       child: const Text('그리드테스트'),
          //     //     )),
          //     const ChartPage(),
          //     Flexible(
          //       child: Row(
          //         mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          //         children: [
          //           Flexible(
          //             child: Center(
          //               child: GridView.count(
          //                 mainAxisSpacing: 50,
          //                 scrollDirection: Axis.horizontal,
          //                 shrinkWrap: true,
          //                 //컬럼속에 그리드뷰 넣으면 에러.,.? 뷰포트뭐시기
          //                 crossAxisCount: 2,
          //                 children: List.generate(8, (index) {
          //                   return const ChartPage();
          //                   // Center(
          //                   //   child: Column(
          //                   //     mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          //                   //     children: [
          //                   //       Text('차트${index + 1}'),
          //                   //       ChartPage(),
          //                   //     ],
          //                   //   ),
          //                   //   // child: Text(
          //                   //   //   '차트${index + 1}',
          //                   //   // ),
          //                   // );
          //                 }).toList(),
          //               ),
          //             ),
          //           ),
          //         ],
          //       ),
          //     ),
          //   ],
          // ),
        
