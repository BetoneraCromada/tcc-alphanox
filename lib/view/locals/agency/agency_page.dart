import 'package:flutter/material.dart';
import 'package:tx/view/locals/agency/laboratory_page.dart';
import 'package:tx/view/locals/agency/space_center_page.dart';
import 'package:tx/widgets/info_card.dart';

class AgencyMainPage extends StatefulWidget {
  const AgencyMainPage({super.key});

  @override
  State<AgencyMainPage> createState() => _AgencyMainPageState();
}

class _AgencyMainPageState extends State<AgencyMainPage> {
  int _currentPageIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentPageIndex,
        onTap: (value) => setState(
          () => _currentPageIndex = value,
        ),
        landscapeLayout: BottomNavigationBarLandscapeLayout.linear,
        showUnselectedLabels: false,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(
              Icons.business_outlined,
            ),
            activeIcon: Icon(
              Icons.business_rounded,
            ),
            label: 'Space Center',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.rocket_outlined,
            ),
            activeIcon: Icon(
              Icons.rocket_rounded,
            ),
            label: 'Laboratório',
          ),
        ],
      ),
      body: Stack(
        children: [
          IndexedStack(
            index: _currentPageIndex,
            children: const [
              SpaceCenterPage(),
              LaboratoryPage(),
            ],
          ),
          Align(
            alignment: Alignment.bottomLeft,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(
                  width: 200,
                  child: Card(
                    child: InfoCard(
                      icon: Icons.attach_money_outlined,
                      title: 'Capital:',
                      subtitle: 'R\$ 2bi',
                    ),
                  ),
                ),
                SizedBox(
                  width: 200,
                  child: Card(
                    child: InfoCard(
                      icon: Icons.science_outlined,
                      title: 'Pesquisa:',
                      subtitle: '2345',
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
