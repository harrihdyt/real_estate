part of 'widget.dart';

class AgentCard extends StatelessWidget {
  String imgUrl;
  String title;
  String subTitle;

  AgentCard(
      {super.key,
      required this.imgUrl,
      required this.title,
      required this.subTitle});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(
        top: 16,
      ),
      width: 90,
      height: 120,
      decoration: BoxDecoration(
        color: whiteColor,
        borderRadius: BorderRadius.circular(
          10,
        ),
      ),
      child: Column(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(
              25,
            ),
            child: Image.asset(
              imgUrl,
              width: 40,
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Text(
            title,
            style: blackTextStyle.copyWith(
              fontWeight: semiBold,
              fontSize: 12,
            ),
          ),
          SizedBox(
            height: 2,
          ),
          Text(
            subTitle,
            style: greyTextStyle.copyWith(
              fontWeight: light,
              fontSize: 12,
            ),
          ),
        ],
      ),
    );
  }
}


// Sizedbox pict to tile 10
// Sizedbox title to subtile 2
// 12 semiBold && 12 light
