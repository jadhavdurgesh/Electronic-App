import 'package:mart_app/constants/consts.dart';

import '../../../common/product_card_vertical.dart';
import '../check_out_screen/check_out_screen.dart';

class CartScreen extends StatefulWidget {
  const CartScreen({Key? key}) : super(key: key);

  @override
  State<CartScreen> createState() => _CartScreenState();
}

class _CartScreenState extends State<CartScreen> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Container(
            decoration: const BoxDecoration(
              gradient: blueGradient,
            ),
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: SafeArea(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  24.heightBox,
                  Row(
                    children: [
                      GestureDetector(
                          onTap: (){
                            Get.back();
                          },
                          child: const Icon(Icons.arrow_back_rounded, color: Colors.white)),
                      12.widthBox,
                      const Expanded(child: Text(
                        "Your Cart",
                        style: TextStyle(
                            fontFamily: "Lato",
                            color: Colors.white,
                            fontSize: 20,
                            fontWeight: FontWeight.w700),
                      ),
                      ),
                    ],
                  ),
                  16.heightBox,
                ],
              ),
            ),
          ),
          Expanded(
            child: Scrollbar(
              child: GridView.count(
                crossAxisCount: 2,
                childAspectRatio: (1 / 1.6),
                crossAxisSpacing: 6,
                mainAxisSpacing: 6,
                padding: const EdgeInsets.only(left: 12, right: 12, top: 16, bottom: 36),
                shrinkWrap: true,
                children: const [
                  ProductCardVertical(),
                  ProductCardVertical(),
                  ProductCardVertical(),
                  ProductCardVertical(),
                  ProductCardVertical(),
                  ProductCardVertical(),
                  ProductCardVertical(),
                  ProductCardVertical(),
                  ProductCardVertical(),
                ],
              ),
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              decoration: const BoxDecoration(
                color: secondaryPurpleColor,
                borderRadius: BorderRadius.only(topLeft: Radius.circular(8), topRight: Radius.circular(8)),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black26,
                    offset: Offset(0, -1),
                    blurRadius: 2
                  )
                ]
              ),
              padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: const [
                      Text(
                        "Total Amount",
                        style: TextStyle(
                            fontFamily: "Lato",
                            color: Colors.black,
                            fontSize: 14,
                            fontWeight: FontWeight.w700
                        ),
                      ),
                      Text(
                        "\$ 1200",
                        style: TextStyle(
                            fontFamily: "Lato",
                            color: Colors.black,
                            fontSize: 14,
                            fontWeight: FontWeight.w700
                        ),
                      ),
                    ],
                  ),
                  8.heightBox,
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: const [
                      Text(
                        "Total number of items",
                        style: TextStyle(
                            fontFamily: "Lato",
                            color: textDarkGreyColor,
                            fontSize: 12,
                        ),
                      ),
                      Text(
                        "4 Products",
                        style: TextStyle(
                            fontFamily: "Lato",
                            color: textDarkGreyColor,
                            fontSize: 12,
                        ),
                      ),
                    ],
                  ),
                  12.heightBox,
                  MainButton(
                    btnText: "Check out",
                    onTap: (){
                      Get.to(const CheckOutScreen());
                    },
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
