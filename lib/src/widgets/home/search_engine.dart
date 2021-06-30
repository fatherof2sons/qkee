import 'package:flutter/material.dart';
import 'package:qkee/src/model/shop.dart';
import 'package:qkee/src/ui/shop_page.dart';

class SearchEngine extends SearchDelegate {
  final List<Shop> _shops = shops;

  @override
  List<Widget> buildActions(BuildContext context) {
    return [IconButton(icon: Icon(Icons.clear), onPressed: () => query = "")];
  }

  @override
  Widget buildLeading(BuildContext context) {
    return IconButton(
      icon: AnimatedIcon(
        icon: AnimatedIcons.menu_arrow,
        progress: transitionAnimation,
      ),
      onPressed: () {
        close(context, null);
      },
    );
  }

  @override
  Widget buildResults(BuildContext context) {
    return Container();
  }

  @override
  Widget buildSuggestions(BuildContext context) {
    final _filteredShops = _shops
        .where((Shop shop) =>
            shop.name!.toLowerCase().contains(query.toLowerCase()))
        .toList();

    if (query.isEmpty) {
      return Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          mainAxisSize: MainAxisSize.max,
          children: [
            Text(
              "Start\nTyping\nA Shop Name",
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 30.0, fontWeight: FontWeight.w300),
            ),
            SizedBox(height: 20.0),
            Icon(
              Icons.gps_fixed_rounded,
              size: 80.0,
              color: Colors.black87,
            ),
          ],
        ),
      );
    }

    return ListView.builder(
      itemCount: _filteredShops.length,
      shrinkWrap: true,
      itemBuilder: (ctx, idx) {
        return _tiles(
            foundShops: _filteredShops,
            onTap: () => Navigator.of(context).pushAndRemoveUntil(
                MaterialPageRoute(
                    builder: (_) => ShopPage(
                          shop: _filteredShops[idx],
                        ),
                    fullscreenDialog: true),
                (route) => false))[idx];
      },
    );
  }

  List<Widget> _tiles({Iterable<Shop>? foundShops, void Function()? onTap}) {
    return foundShops!
        .map(
          (e) => ListTile(
            minVerticalPadding: 20.0,
            title: Text(
              "${e.name}",
              style: TextStyle(fontSize: 18.0),
            ),
            subtitle: Text("${e.district}"),
            leading: CircleAvatar(
              radius: 30.0,
              backgroundImage: NetworkImage(
                "${e.image}",
              ),
            ),
            onTap: onTap,
          ),
        )
        .toList();
  }
}
