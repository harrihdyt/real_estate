part of 'home.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int currentIndex = 0;

  Widget customeNavigationBar() {
    return BottomNavigationBar(
      currentIndex: currentIndex,
      onTap: (value) {
        setState(() {
          currentIndex = value;
        });
      },
      backgroundColor: whiteColor,
      unselectedLabelStyle: softGreyTextStyle,
      selectedLabelStyle: darkBlueTextStyle.copyWith(fontWeight: semiBold),
      selectedItemColor: darkBlueColor,
      type: BottomNavigationBarType.fixed,
      items: [
        BottomNavigationBarItem(
            icon: Container(
              margin: EdgeInsets.only(
                top: 10,
                bottom: 6,
              ),
              child: Image.asset(
                'assets/home_icon.png',
                width: 24,
                color: currentIndex == 0 ? orangeColor : softGreyColor,
              ),
            ),
            label: 'Discover'),
        BottomNavigationBarItem(
            icon: Container(
              margin: EdgeInsets.only(
                top: 10,
                bottom: 6,
              ),
              child: Image.asset(
                'assets/fav.png',
                color: currentIndex == 1 ? orangeColor : softGreyColor,
                width: 24,
              ),
            ),
            label: 'Favorites'),
        BottomNavigationBarItem(
            icon: Container(
              margin: EdgeInsets.only(
                top: 10,
                bottom: 6,
              ),
              child: Image.asset(
                'assets/tv.png',
                color: currentIndex == 2 ? orangeColor : softGreyColor,
                width: 24,
              ),
            ),
            label: 'TV News'),
        BottomNavigationBarItem(
            icon: Container(
              margin: EdgeInsets.only(
                top: 10,
                bottom: 6,
              ),
              child: Image.asset(
                'assets/settings.png',
                color: currentIndex == 3 ? orangeColor : softGreyColor,
                width: 24,
              ),
            ),
            label: 'Settings'),
      ],
    );
  }

  body() {
    switch (currentIndex) {
      case 0:
        return DiscoverPage();
        break;
      case 1:
        return FavoritePage();
        break;
      case 2:
        return TvNewsPage();
        break;
      case 3:
        return SettingsPage();
        break;
      default:
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor,
      bottomNavigationBar: customeNavigationBar(),
      body: body(),
    );
  }
}
