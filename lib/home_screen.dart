import 'package:flutter/material.dart';
import 'package:islami/tabs/hadeth/hadeth_tab.dart';
import 'package:islami/tabs/quran/quran_tab.dart';
import 'package:islami/tabs/radio/radio_tab.dart';
import 'package:islami/tabs/sebha/sebha_tab.dart';
import 'package:islami/tabs/settings/settings_provider.dart';
import 'package:islami/tabs/settings/settings_tab.dart';
import 'package:provider/provider.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class HomeScreen extends StatefulWidget {
  static const String routeName = 'home';

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List<Widget> tabs = [
    QuranTab(),
    HadethTab(),
    SebhaTab(),
    RadioTab(),
    SettingsTab(),
  ];
  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage(
              'assets/images/${Provider.of<SettingsProvider>(context).backgroundImageName}.png'),
          fit: BoxFit.cover,
        ),
      ),
      child: Scaffold(
        appBar: AppBar(
          title: Text(AppLocalizations.of(context)!.islami),
        ),
        body: tabs[selectedIndex],
        bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          currentIndex: selectedIndex,
          onTap: (index) {
            selectedIndex = index;
            setState(() {});
          },
          items: const [
            BottomNavigationBarItem(
              icon: ImageIcon(
                AssetImage('assets/images/icon_quran.png'),
              ),
              label: 'Quran',
            ),
            BottomNavigationBarItem(
              icon: ImageIcon(
                AssetImage('assets/images/icon_hadeth.png'),
              ),
              label: 'Hadeth',
            ),
            BottomNavigationBarItem(
              icon: ImageIcon(
                AssetImage('assets/images/icon_sebha.png'),
              ),
              label: 'Sebha',
            ),
            BottomNavigationBarItem(
              icon: ImageIcon(
                AssetImage('assets/images/icon_radio.png'),
              ),
              label: 'Radio',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.settings_outlined),
              label: 'Settings',
            ),
          ],
        ),
      ),
    );
  }
}
