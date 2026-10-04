import 'package:flutter/material.dart';
import 'package:minimal_app/components/my_list_tile.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: Theme.of(context).colorScheme.surface,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            children: [
              // drawer header
              DrawerHeader(
                child: Center(
                  child: Icon(
                    Icons.shopping_bag,
                    size: 72,
                    color: Theme.of(context).colorScheme.inversePrimary,
                  ),
                ),
              ),

              const SizedBox(height: 25),

              // shop tile
              MyListTile(
                title: 'Shop',
                icon: Icons.home,
                onTap: () {
                  // pop Drawer first
                  Navigator.pop(context);
                  // go to shop page
                  Navigator.pushNamed(context, '/shop_page');
                },
              ),

              // cart tile
              MyListTile(
                title: 'Cart',
                icon: Icons.shopping_cart,
                onTap: () {
                  // pop Drawer first
                  Navigator.pop(context);

                  // go to cart page
                  Navigator.pushNamed(context, '/cart_page');
                },
              ),
            ],
          ),

          // exit tile
          Padding(
            padding: const EdgeInsets.only(bottom: 25),
            child: MyListTile(
              title: 'Exit',
              icon: Icons.logout,
              onTap: () => Navigator.pushNamedAndRemoveUntil(
                context,
                '/intro_page',
                (route) => false,
              ),
            ),
          )
        ],
      ),
    );
  }
}