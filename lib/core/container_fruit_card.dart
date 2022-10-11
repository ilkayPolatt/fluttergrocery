import 'package:flutter/material.dart';
import 'package:flutter_application_2/const/greengrocer_const.dart';
import 'package:flutter_application_2/view/green_grocer_detail.dart';

class ContainerFruitCard extends StatelessWidget {
  const ContainerFruitCard(
      {super.key, required this.image, required this.text});

  final String image;
  final String text;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: GreengrocerConst.color_white,
          borderRadius: GreengrocerConst.borderRadiusCircular15),
      height: MediaQuery.of(context).size.height / 3.2,
      width: MediaQuery.of(context).size.width / 2.25,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              _image(context),
              GreengrocerConst.sizedBoxHeight5,
              _headText(context),
              GreengrocerConst.sizedBoxHeight10,
              _textKg(context), //1kg
              GreengrocerConst.sizedBoxHeight20,
              _rowPriceCircleAvatar(context),
            ],
          ),
        ),
      ),
    );
  }

  Text _textKg(BuildContext context) {
    return Text(
      GreengrocerConst.info_card_quantity,
      style: Theme.of(context)
          .textTheme
          .subtitle1
          ?.copyWith(color: GreengrocerConst.color_grey),
    );
  }

  Row _rowPriceCircleAvatar(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          children: [
            Text(
              GreengrocerConst.text_12$,
              style: Theme.of(context).textTheme.headline6?.copyWith(
                    color: GreengrocerConst.color_black,
                    fontWeight: FontWeight.bold,
                  ),
            ),
            GreengrocerConst.sizedBoxWidth5,
            Text(
              GreengrocerConst.text_15,
              style: TextStyle(
                color: GreengrocerConst.color_grey,
                decoration: TextDecoration.lineThrough,
                decorationThickness: 3,
                decorationStyle: TextDecorationStyle.solid,
              ),
            )
          ],
        ),
        CircleAvatar(
          backgroundColor: GreengrocerConst.color_green,
          child: IconButton(
              onPressed: () {
                Navigator.of(context).pushReplacement(MaterialPageRoute(
                  builder: (context) => GreenGrocerDetail(),
                ));
              },
              icon: Icon(
                Icons.add,
                color: GreengrocerConst.color_white,
              )),
        )
      ],
    );
  }

  Text _headText(BuildContext context) {
    return Text(text,
        style: Theme.of(context).textTheme.headline6?.copyWith(
              color: GreengrocerConst.color_black,
            ));
  }

  Image _image(BuildContext context) {
    return Image.asset(
      image,
      fit: BoxFit.cover,
      height: MediaQuery.of(context).size.height / 7,
    );
  }
}
