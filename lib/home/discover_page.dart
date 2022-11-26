part of 'home.dart';

class DiscoverPage extends StatelessWidget {
  const DiscoverPage({super.key});

  Widget header() {
    return Container(
      margin: EdgeInsets.symmetric(
        horizontal: 24,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Estate',
                style: blackTextStyle.copyWith(
                  fontWeight: bold,
                  fontSize: 24,
                ),
              ),
              SizedBox(
                height: 3,
              ),
              Text(
                'Best discovery ever',
                style: greyTextStyle,
              )
            ],
          ),
          Image.asset(
            'assets/icon_notif.png',
            width: 40,
          )
        ],
      ),
    );
  }

  Widget categoriesTitle() {
    return Container(
      margin: EdgeInsets.only(left: 24, right: 24, top: 24),
      child: Text(
        'Categories',
        style: blackTextStyle.copyWith(fontWeight: semiBold, fontSize: 18),
      ),
    );
  }

  Widget categories() {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Container(
        margin: EdgeInsets.only(top: 8, left: 24, right: 24),
        child: Row(
          children: [
            CategoriesCard(imagrUrl: 'assets/icon_forest.png', title: 'Hutan'),
            SizedBox(
              width: 16,
            ),
            CategoriesCard(imagrUrl: 'assets/icon_shop.png', title: 'Toko'),
            SizedBox(
              width: 16,
            ),
            CategoriesCard(
                imagrUrl: 'assets/icon_delivery.png', title: 'Gudang'),
            SizedBox(
              width: 16,
            ),
            CategoriesCard(imagrUrl: 'assets/icon_rain.png', title: 'Hujan'),
            SizedBox(
              width: 16,
            ),
            CategoriesCard(imagrUrl: 'assets/icon_office.png', title: 'Office'),
            SizedBox(
              width: 16,
            ),
            CategoriesCard(imagrUrl: 'assets/icon_forest.png', title: 'Jungle'),
          ],
        ),
      ),
    );
  }

  Widget staffPicksTitle() {
    return Container(
      margin: EdgeInsets.only(left: 24, right: 24, top: 24),
      child: Text(
        'Staff Picks',
        style: blackTextStyle.copyWith(fontWeight: semiBold, fontSize: 18),
      ),
    );
  }

  Widget staffPicks() {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Container(
        margin: EdgeInsets.only(top: 8, left: 24, right: 24),
        child: Row(
          children: [
            StaffPickCard(
                imgUrl: 'assets/lagon_sky.png',
                title: 'Lagon Sky',
                subTitle: '412 sq lt.',
                price: '\$920'),
            SizedBox(
              width: 16,
            ),
            StaffPickCard(
                imgUrl: 'assets/inn_parapatt.png',
                title: 'Inn Parapatt',
                subTitle: '800 sq ft.',
                price: '\$15.000')
          ],
        ),
      ),
    );
  }

  Widget agentTitle() {
    return Container(
      margin: EdgeInsets.only(left: 24, right: 24, top: 24),
      child: Text(
        'Best Agents',
        style: blackTextStyle.copyWith(fontWeight: semiBold, fontSize: 18),
      ),
    );
  }

  Widget agents() {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Container(
        margin: EdgeInsets.only(top: 8, left: 24, right: 24),
        child: Row(
          children: [
            AgentCard(
              imgUrl: 'assets/saratthu.png',
              title: 'Saratthu',
              subTitle: '1920 sold',
            ),
            SizedBox(
              width: 16,
            ),
            AgentCard(
              imgUrl: 'assets/isy_mana.png',
              title: 'Isy Mana',
              subTitle: '839 sold',
            ),
            SizedBox(
              width: 16,
            ),
            AgentCard(
              imgUrl: 'assets/luph.png',
              title: 'Luph',
              subTitle: '422 sold',
            ),
            SizedBox(
              width: 16,
            ),
            AgentCard(
              imgUrl: 'assets/saratthu.png',
              title: 'Saratthu',
              subTitle: '1920 sold',
            ),
          ],
        ),
      ),
    );
  }

  Widget cityTitle() {
    return Container(
      margin: EdgeInsets.only(left: 24, right: 24, top: 24),
      child: Text(
        'Cities',
        style: blackTextStyle.copyWith(fontWeight: semiBold, fontSize: 18),
      ),
    );
  }

  Widget citites() {
    return Container(
      margin: EdgeInsets.only(top: 8, left: 24, right: 24),
      child: Column(
        children: [
          CitiesCard(
            imgUrl: 'assets/jaksel.png',
            city: 'Jakarta Selatan',
            subCity: '194 property',
            hot: 'assets/hot.png',
          ),
          SizedBox(
            height: 16,
          ),
          CitiesCard(
            imgUrl: 'assets/bandung.png',
            city: 'Bandung',
            subCity: '89.400 property',
          ),
          SizedBox(
            height: 16,
          ),
          CitiesCard(
            imgUrl: 'assets/denpasar.png',
            city: 'Denpasar',
            subCity: '184.000 property',
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
            child: ListView(
      children: [
        header(),
        categoriesTitle(),
        categories(),
        staffPicksTitle(),
        staffPicks(),
        agentTitle(),
        agents(),
        cityTitle(),
        citites(),
      ],
    )));
  }
}
