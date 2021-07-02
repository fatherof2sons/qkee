import 'package:flutter/material.dart';
import 'package:qkee/src/ui/shop_register_page.dart';
import 'package:qkee/src/widgets/home/footer_main.dart';
import 'package:qkee/src/widgets/home/search_button.dart';
import 'package:qkee/src/widgets/home/search_engine.dart';
import 'package:qkee/src/widgets/home/text_main.dart';
import 'package:qkee/src/widgets/home/title_main.dart';

class HomePage extends StatelessWidget {
  void _registerShop(BuildContext context) {
    Navigator.of(context).push(MaterialPageRoute(
        builder: (_) => ShopRegisterPage(), fullscreenDialog: true));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
              flex: 1,
              child: MainTitle(
                title: "Qkee",
                onLongPress: () => _registerShop(context),
              ),
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
                      btnText: "Find Shops",
                      color: Colors.black87,
                      icon: Icons.store_rounded,
                    )
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
