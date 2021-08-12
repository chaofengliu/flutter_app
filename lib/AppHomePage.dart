import 'package:flutter/material.dart';
import 'Dynamic.dart';
import 'Category.dart';
import 'Message.dart';
import 'Mine.dart';

class AppHomePage extends StatefulWidget {
  const AppHomePage({Key? key}) : super(key: key);

  @override
  _AppHomePageState createState() => _AppHomePageState();
}

class _AppHomePageState extends State<AppHomePage> {
  int _index = 0;

  List<Widget> _homeWidgets = [
    dynamicPage(),
    messagePage(),
    categoryPage(),
    minPage(),
  ];

  void _onBottomNagivationBarTapped(index){
    setState(() {
      _index = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('刘超峰'),
      ),
      body: IndexedStack(
        index: _index,
        children: _homeWidgets,
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        currentIndex: _index,
        onTap: _onBottomNagivationBarTapped,
        items: [
          _getBottomNavItem('首页', 'images/home_selected.png', 'images/home_unselected.png', 0),
          _getBottomNavItem('合同', 'images/contract_selected.png', 'images/contract_unselected.png', 1),
          _getBottomNavItem('审批', 'images/approve_selected.png', 'images/approve_unselected.png', 2),
          _getBottomNavItem('消息', 'images/msg_selected.png', 'images/msg_unselected.png', 3)
        ],
      ),
    );
  }

  BottomNavigationBarItem _getBottomNavItem(
      String title,String pressedIcon,String normalIcon,int index
      ){
    return BottomNavigationBarItem(
        icon: _index == index
            ?
        Image.asset(pressedIcon,width: 32,height: 28,)
            :
        Image.asset(normalIcon,width: 32,height: 28,),
        label: title
    );
  }
}
