part of 'widget.dart';

class StaffPickCard extends StatelessWidget {
  String imgUrl;
  String title;
  String subTitle;
  String price;

  StaffPickCard({
    super.key,
    required this.imgUrl,
    required this.title,
    required this.subTitle,
    required this.price,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(
        top: 10,
        left: 10,
        right: 10,
      ),
      width: 200,
      height: 181,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: whiteColor,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            width: 180,
            height: 110,
            padding: EdgeInsets.only(
              left: 10,
              right: 10,
              top: 10,
            ),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              image: DecorationImage(
                image: AssetImage(imgUrl),
                fit: BoxFit.cover,
              ),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    title,
                    style: blackTextStyle.copyWith(
                      fontWeight: bold,
                    ),
                  ),
                  SizedBox(
                    height: 2,
                  ),
                  Text(
                    subTitle,
                    style:
                        greyTextStyle.copyWith(fontWeight: light, fontSize: 12),
                  ),
                ],
              ),
              Text(
                price,
                style: orangeTextStyle.copyWith(
                  fontWeight: semiBold,
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
}
