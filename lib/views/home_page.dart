import 'package:flutter/material.dart';
import 'package:flutter_tabbar_page/flutter_tabbar_page.dart';
import 'package:settting/views/general_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<PageTabItemModel> lstPages = <PageTabItemModel>[];
  final TabPageController _controller = TabPageController();

  @override
  void initState() {
    super.initState();
    lstPages.add(PageTabItemModel(title: "General", page: GeneralPage()));
    lstPages.add(PageTabItemModel(title: "Labels", page: const Center(child: Text("Item 2"))));
    lstPages.add(PageTabItemModel(title: "Inbox", page: const Center(child: Text("Item 3"))));
    lstPages.add(PageTabItemModel(title: "Accounts and Import", page: const Center(child: Text("Item 3"))));
    lstPages.add(PageTabItemModel(title: "Filters and blocked addresses", page: const Center(child: Text("Item 3"))));
    lstPages.add(PageTabItemModel(title: "Forwarding and POP/IMAP", page: const Center(child: Text("Item 3"))));
    lstPages.add(PageTabItemModel(title: "Add-ons", page: const Center(child: Text("Item 3"))));
    lstPages.add(PageTabItemModel(title: "Chat and Meet", page: const Center(child: Text("Item 3"))));
    lstPages.add(PageTabItemModel(title: "Advanced", page: const Center(child: Text("Item 3"))));
    lstPages.add(PageTabItemModel(title: "Offline", page: const Center(child: Text("Item 3"))));
    lstPages.add(PageTabItemModel(title: "Themes", page: const Center(child: Text("Item 3"))));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Settings"),
      ),
      body: Column(
        children: <Widget>[
          Flexible(
            child: TabBarPage(
              controller: _controller,
              pages: lstPages,
              isSwipable: true,
              tabBackgroundColor: Colors.white,
              tabitemBuilder: (context, index) {
                return InkWell(
                  onTap: () {
                    _controller.onTabTap(index);
                  },
                  child: SizedBox(
                    width: MediaQuery.of(context).size.width / lstPages.length,
                    child: Stack(
                      alignment: Alignment.bottomCenter,
                      children: [
                        Center(
                          child: Text(
                            lstPages[index].title ?? "",
                            style: TextStyle(
                                fontWeight: _controller.currentIndex == index ? FontWeight.w500 : FontWeight.w400,
                                color: _controller.currentIndex == index ?Color(0xFF5899ee) : Colors.black26,
                                fontSize: 16),
                          ),
                        ),
                        Container(
                            height: 3,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(8),
                                color: _controller.currentIndex == index ? Color(0xFF5899ee) : Colors.transparent)),
                      ],
                    ),
                  ),
                );
              },
            ),
          )
        ],
      ),
    );
  }
}
