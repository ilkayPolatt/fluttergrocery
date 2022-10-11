import 'package:flutter/material.dart';
import 'package:flutter_application_2/const/greengrocer_const.dart';
import 'package:flutter_application_2/view/green_grocer_welcome.dart';

class GreenGrocerDetail extends StatelessWidget {
  const GreenGrocerDetail({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(3.0),
      child: Scaffold(
        backgroundColor: Colors.grey[100],
        body: Padding(
          padding: const EdgeInsets.only(top: 50, left: 15, right: 15),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              _rowCircleAvatar(),
              GreengrocerConst.sizedBoxHeight10,
              _detailImageBrokoli(context),
              _textGreenBroccoli(context),
              GreengrocerConst.sizedBoxHeight10,
              _icons(context),
              Padding(padding: EdgeInsets.only(bottom: 15)),
              _description(context),
              Padding(padding: EdgeInsets.only(bottom: 10)),
              Text(GreengrocerConst.text_explantion),
              Padding(padding: EdgeInsets.only(bottom: 35)),
              _relatedItem(context),
              Padding(padding: EdgeInsets.only(bottom: 13)),
              _rowContainerFruitDetail(context),
              Padding(padding: EdgeInsets.only(bottom: 15)),
              _rowContainerTextDetail(),
              Padding(padding: EdgeInsets.only(bottom: 20)),
              elevatedButton(height: 15),
            ],
          ),
        ),
      ),
    );
  }

  Row _rowContainerTextDetail() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        Text(GreengrocerConst.text_biber),
        Text(GreengrocerConst.text_lettuce),
        Text(GreengrocerConst.text_domates),
        Text(GreengrocerConst.textCarrot),
      ],
    );
  }

  Row _rowContainerFruitDetail(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        containerMini(
          image: GreengrocerConst.imageBiber,
        ),
        containerMini(
          image: GreengrocerConst.imageMarul,
        ),
        containerMini(
          image: GreengrocerConst.imagedomateskap,
        ),
        containerMini(
          image: GreengrocerConst.imageHavuc,
        ),
      ],
    );
  }

  Text _relatedItem(BuildContext context) {
    return Text(GreengrocerConst.text_related_item,
        style: Theme.of(context).textTheme.headline5?.copyWith(
            color: GreengrocerConst.color_black,
            fontSize: 18,
            fontWeight: FontWeight.w500));
  }

  Text _description(BuildContext context) {
    return Text(GreengrocerConst.text_description,
        style: Theme.of(context).textTheme.headline5?.copyWith(
            color: GreengrocerConst.color_black,
            fontSize: 18,
            fontWeight: FontWeight.w500));
  }

  Row _icons(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          children: [
            Text(
              GreengrocerConst.text_12$,
              style: Theme.of(context).textTheme.headline5?.copyWith(
                  color: GreengrocerConst.color_black,
                  fontSize: 23,
                  fontWeight: FontWeight.w500),
            ),
            Text(GreengrocerConst.text_15,
                style: TextStyle(decoration: TextDecoration.lineThrough)),
          ],
        ),
        Row(
          children: [
            _containerRemove(),
            GreengrocerConst.sizedBoxWidth10,
            Text(GreengrocerConst.info_card_quantity,
                style: Theme.of(context).textTheme.subtitle1?.copyWith(
                    color: GreengrocerConst.color_black,
                    fontWeight: FontWeight.bold)),
            GreengrocerConst.sizedBoxWidth10,
            _containerAdd(),
          ],
        )
      ],
    );
  }

  Container _containerAdd() {
    return Container(
      child: Center(
        child: Icon(
          Icons.add,
          color: GreengrocerConst.color_white,
        ),
      ),
      decoration: BoxDecoration(
        color: GreengrocerConst.color_green,
        borderRadius: GreengrocerConst.borderRadiusCircular15,
      ),
      height: 22,
      width: 22,
    );
  }

  Container _containerRemove() {
    return Container(
      child: Center(
        child: Icon(
          Icons.remove,
          color: GreengrocerConst.color_white,
        ),
      ),
      decoration: BoxDecoration(
        color: GreengrocerConst.color_green,
        borderRadius: GreengrocerConst.borderRadiusCircular30,
      ),
      height: 22,
      width: 22,
    );
  }

  Text _textGreenBroccoli(BuildContext context) {
    return Text(GreengrocerConst.text__green_brocoli,
        style: Theme.of(context).textTheme.headline5?.copyWith(
            color: GreengrocerConst.color_black,
            fontSize: 22,
            fontWeight: FontWeight.w500));
  }

  Image _detailImageBrokoli(BuildContext context) {
    return Image.asset(
      GreengrocerConst.imageBrokoli,
      height: MediaQuery.of(context).size.height / 3,
    );
  }

  Row _rowCircleAvatar() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        CircleAvatar(
          backgroundColor: GreengrocerConst.color_white,
          child: IconButton(
            onPressed: () {},
            icon: Icon(Icons.chevron_left),
            color: GreengrocerConst.color_black,
          ),
        ),
        CircleAvatar(
          backgroundColor: GreengrocerConst.color_white,
          child: IconButton(
            onPressed: () {},
            icon: Icon(Icons.search),
            color: GreengrocerConst.color_black,
          ),
        ),
      ],
    );
  }
}

class containerMini extends StatelessWidget {
  const containerMini({
    Key? key,
    required this.image,
  }) : super(key: key);

  final String image;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: GreengrocerConst.color_white,
          borderRadius: GreengrocerConst.borderRadiusCircular15),
      height: MediaQuery.of(context).size.height / 12,
      width: MediaQuery.of(context).size.width / 6.5,
      child: Image.asset(
        image,
        fit: BoxFit.contain,
      ),
    );
  }
}
