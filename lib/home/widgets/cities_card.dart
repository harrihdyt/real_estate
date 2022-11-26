part of 'widget.dart';

class CitiesCard extends StatelessWidget {
  String imgUrl;
  String city;
  String subCity;
  late String hot;

  CitiesCard({
    super.key,
    required this.imgUrl,
    required this.city,
    required this.subCity,
    this.hot = 'assets/blank.png',
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 90,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: whiteColor,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            margin: EdgeInsets.only(
              left: 10,
              top: 10,
              bottom: 10,
            ),
            width: 90,
            height: 90,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(
                5,
              ),
              image: DecorationImage(
                image: AssetImage(imgUrl),
                fit: BoxFit.cover,
              ),
            ),
          ),
          SizedBox(
            width: 16,
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                city,
                style: blackTextStyle.copyWith(
                  fontWeight: bold,
                ),
              ),
              SizedBox(height: 3),
              Text(
                subCity,
                style: greyTextStyle.copyWith(
                  fontWeight: light,
                  fontSize: 12,
                ),
              ),
            ],
          ),
          Spacer(),
          Container(
            margin: EdgeInsets.only(
              right: 10,
            ),
            child: Image.asset(
              hot,
              width: 30,
            ),
          ),
        ],
      ),
    );
  }
}
