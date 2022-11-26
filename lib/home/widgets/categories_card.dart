part of 'widget.dart';

class CategoriesCard extends StatelessWidget {
  String imagrUrl;
  String title;

  CategoriesCard({super.key, required this.imagrUrl, required this.title});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(right: 16),
      child: Column(
        children: [
          Image.asset(
            imagrUrl,
            width: 50,
          ),
          SizedBox(
            height: 6,
          ),
          Text(
            title,
            style: blackTextStyle.copyWith(fontWeight: medium, fontSize: 12),
          )
        ],
      ),
    );
  }
}
