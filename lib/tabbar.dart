import 'package:flutter/material.dart';


class Tabbar extends StatelessWidget {
  const Tabbar({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(length: 2,
        initialIndex: 1,
        child: Scaffold(
          appBar: AppBar(
            title: Text("Tabbar"),
            bottom: const TabBar(
              tabs: [
                Tab(
                  icon: Icon(Icons.access_time),
                  text: "Tab 1",
                ),
                Tab(
                  icon: Icon(Icons.umbrella),
                  text: "Tab 2",
                ),
              ],
            ),
          ),
          body: const TabBarView(
            children: [
                 Center(
                     child: Text("This is tab 1")),
                 Center(
                     child: Text("This is tab 2")),
            ],
          ),

        ),
    );
  }
}

