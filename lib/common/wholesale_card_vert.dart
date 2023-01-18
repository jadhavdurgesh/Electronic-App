import 'package:mart_app/common/widgets/added_widget.dart';
import 'package:mart_app/constants/consts.dart';

class WholesaleCardVert extends StatefulWidget {
  const WholesaleCardVert({Key? key}) : super(key: key);

  @override
  State<WholesaleCardVert> createState() => _WholesaleCardVertState();
}

class _WholesaleCardVertState extends State<WholesaleCardVert> {

  bool tapped = false;

  @override
  Widget build(BuildContext context) {

    return Container(
      decoration: BoxDecoration(
          color: primaryPurpleColor,
          borderRadius: BorderRadius.circular(8),
        boxShadow: const [
          BoxShadow(
              color: Colors.black26,
              offset: Offset(1, 1),
              blurRadius: 1
          )
        ],
      ),
      padding: const EdgeInsets.all(8),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          AspectRatio(
            aspectRatio: 1/1,
            child: Image.network(
              "https://i.pinimg.com/originals/52/11/96/521196ef0f94d8eea990b49bc801acc8.png",
              fit: BoxFit.fill,
            ),
          ),
          12.heightBox,
          const Text(
            "Product Name",
            style: TextStyle(
              fontFamily: "Lato",
              color: Colors.black,
              fontSize: 14,
              fontWeight: FontWeight.w700,
            ),
          ),
          6.heightBox,
          const Text(
            "\$ 200",
            style: TextStyle(
              fontFamily: "Lato",
              color: textDarkGreyColor,
              fontSize: 14,
              fontWeight: FontWeight.w400,
            ),
          ),
          6.heightBox,
          const Text(
            "Minimum Qty: 12",
            style: TextStyle(
              fontFamily: "Lato",
              color: textDarkGreyColor,
              fontSize: 14,
              fontWeight: FontWeight.w400,
            ),
          ),
          8.heightBox,
          !tapped? MainButton(
            btnText: "Add to Cart",
            onTap: (){
              setState(() {
                tapped = true;
              });
            },
            vertPadding: 8,
            radius: 8,
          ) : const AddedWidget(),
        ],
      ),
    );
  }
}