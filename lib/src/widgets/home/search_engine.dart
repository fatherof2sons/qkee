import 'package:flutter/material.dart';
import 'package:qkee/src/model/shop.dart';
import 'package:qkee/src/ui/shop_page.dart';

class SearchEngine extends SearchDelegate {
  final List<Shop> _shops = shops;

  List<Shop> get _filteredShops => _shops
      .where(
          (Shop shop) => shop.name!.toLowerCase().contains(query.toLowerCase()))
      .toList();

  Widget _createFilteredShop(BuildContext context) {
    return ListView.builder(
        itemCount: _filteredShops.length,
        itemBuilder: (ctx, idx) {
          return ListTile(
              minVerticalPadding: 20.0,
              title: Text(
                "${_filteredShops[idx].name}",
                style: TextStyle(fontSize: 18.0),
              ),
              subtitle: Text("${_filteredShops[idx].district}"),
              leading: CircleAvatar(
                radius: 30.0,
                backgroundImage: NetworkImage(
                  "${_filteredShops[idx].image}",
                ),
              ),
              onTap: () => Navigator.of(context).pushAndRemoveUntil(
                  MaterialPageRoute(
                      builder: (_) => ShopPage(
                            shop: _filteredShops[idx],
                          ),
                      fullscreenDialog: true),
                  (route) => false));
        });
  }

  Widget _whenQueryisEmpty() {
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
            color: Colors.black54,
          ),
        ],
      ),
    );
  }

  @override
  List<Widget> buildActions(BuildContext context) {
    return [
      IconButton(
          icon: Icon(
            Icons.clear,
            color: Colors.black87,
          ),
          onPressed: () => query = "")
    ];
  }

  @override
  Widget buildLeading(BuildContext context) {
    return IconButton(
      icon: AnimatedIcon(
        icon: AnimatedIcons.menu_arrow,
        color: Colors.black87,
        progress: transitionAnimation,
      ),
      onPressed: () {
        close(context, null);
      },
    );
  }

  @override
  Widget buildResults(BuildContext context) {
    if (query.isEmpty) return _whenQueryisEmpty();

    return _createFilteredShop(context);
  }

  @override
  Widget buildSuggestions(BuildContext context) {
    if (query.isEmpty) return _whenQueryisEmpty();

    return _createFilteredShop(context);
  }
}
