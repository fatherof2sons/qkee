import 'package:flutter/material.dart';
import 'package:qkee/src/widgets/home/footer_main.dart';
import 'package:qkee/src/widgets/home/search_button.dart';
import 'package:qkee/src/widgets/home/search_engine.dart';
import 'package:qkee/src/widgets/home/text_main.dart';
import 'package:qkee/src/widgets/home/title_main.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
              flex: 1,
              child: MainTitle(title: "Qkee"),
            ),
            Expanded(
              flex: 4,
              child: Container(
                padding: EdgeInsets.symmetric(horizontal: 20.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    MainText(text: "Find Pretty Much Any Shop You Want!"),
                    SizedBox(height: 70.0),
                    SearchButton(
                        onPressed: () => showSearch(
                            context: context, delegate: SearchEngine()),
                        btnText: "Find Shops")
                  ],
                ),
              ),
            ),
            Expanded(
              flex: 1,
              child: FooterMain(footerText: "Developed By AxinTriplet"),
            ),
          ],
        ),
      ),
    );
  }
}
