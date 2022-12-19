import 'package:flutter/material.dart';
import 'package:news_app_g4_5/providers/api_provider.dart';
import 'package:news_app_g4_5/providers/bottom_nav_bar_provider.dart';
import 'package:news_app_g4_5/view/search/search_scrreen.dart';
import 'package:provider/provider.dart';

class MyHomeScreen extends StatelessWidget {
  const MyHomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Consumer<BottomNavBarProvider>(
      builder: (ctx, provider, _) {
        return Scaffold(
          body: provider.screens[provider.currentIndex],
          backgroundColor: Colors.white,
          appBar: AppBar(
            backgroundColor: Colors.white,
            elevation: 0,
            foregroundColor: Colors.black,
            title: Text('News App'),
            actions: [
              IconButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (ctx) => SearchScreen()),
                  );
                },
                icon: Icon(
                  Icons.search_rounded,
                ),
              ),
              IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.lightbulb_outline,
                ),
              ),
            ],
          ),
          bottomNavigationBar: BottomNavigationBar(
            backgroundColor: Colors.white,
            elevation: 0,
            selectedItemColor: Colors.deepOrange,
            currentIndex: provider.currentIndex,
            onTap: (int index) {
              provider.changeCurrentIndex(index: index);
            },
            items: provider.items,
          ),
          floatingActionButton: FloatingActionButton(
            onPressed: () {
              Provider.of<APIProvider>(context, listen: false).getData();
            },
          ),
        );
      },
    );
  }
}
