import 'package:flutter/material.dart';
import 'package:flutter_application_2/const/greengrocer_const.dart';
import 'package:flutter_application_2/core/container_background_white.dart';
import 'package:flutter_application_2/core/container_fruit_card.dart';

class GreenGrocerHome extends StatelessWidget {
  const GreenGrocerHome({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(4.0),
      child: Scaffold(
        backgroundColor: Colors.grey[100],
        body: Padding(
          padding: const EdgeInsets.only(top: 70, left: 15, right: 15),
          child: SingleChildScrollView(
            child: Column(
              children: [
                _rowAppBar(),
                GreengrocerConst.sizedBoxHeight20,
                _containerGreen(context),
                GreengrocerConst.sizedBoxHeight20,
                _rowTextPopularSee(context),
                GreengrocerConst.sizedBoxHeight15,
                _rowSingleChildScrollCard(),
                GreengrocerConst.sizedBoxHeight15,
                _rowTextNewItemSee(context),
                GreengrocerConst.sizedBoxHeight10,
                _rowSingleChildScrollCard(),
                GreengrocerConst.sizedBoxHeight10,
                _rowSingleChildScrollCard(),
              ],
            ),
          ),
        ),
        bottomNavigationBar: BottomNavigationBar(
          items: [
            BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
            BottomNavigationBarItem(
                icon: Icon(Icons.linear_scale), label: 'Slider'),
            BottomNavigationBarItem(icon: Icon(Icons.search), label: 'Search'),
          ],
        ),
      ),
    );
  }

  SingleChildScrollView _rowSingleChildScrollCard() {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          ContainerFruitCard(
            image: GreengrocerConst.imageMarul,
            text: GreengrocerConst.text_chinese_cabage,
          ),
          GreengrocerConst.sizedBoxWidth15,
          ContainerFruitCard(
            image: GreengrocerConst.imagedomateskap,
            text: GreengrocerConst.text_domates,
          ),
        ],
      ),
    );
  }

  Row _rowTextNewItemSee(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          GreengrocerConst.text_new_item,
          style: Theme.of(context).textTheme.headline5?.copyWith(
                color: GreengrocerConst.color_black,
                fontWeight: FontWeight.bold,
              ),
        ),
        Text(
          GreengrocerConst.info_text_see,
          style: Theme.of(context).textTheme.headline5?.copyWith(
                color: GreengrocerConst.color_green,
                fontWeight: FontWeight.bold,
              ),
        )
      ],
    );
  }

  Row _rowTextPopularSee(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          GreengrocerConst.info_text_popular,
          style: Theme.of(context).textTheme.headline5?.copyWith(
                color: GreengrocerConst.color_black,
                fontWeight: FontWeight.bold,
              ),
        ),
        Text(
          GreengrocerConst.info_text_see,
          style: Theme.of(context).textTheme.headline5?.copyWith(
                color: GreengrocerConst.color_green,
                fontWeight: FontWeight.bold,
              ),
        )
      ],
    );
  }

  ContainerBackgroundWhite _containerGreen(BuildContext context) {
    return ContainerBackgroundWhite(
        widget: Padding(
      padding: const EdgeInsets.only(
        top: 20,
        left: 15,
      ),
      child: Row(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              _textOrder(context),
              GreengrocerConst.sizedBoxHeight10,
              _containerOrderNow(context)
            ],
          ),
          Positioned(
            right: 10,
            child: Image.asset(
              GreengrocerConst.imageSebzeler,
              fit: BoxFit.cover,
              width: MediaQuery.of(context).size.width / 2.5,
              height: MediaQuery.of(context).size.height / 8,
            ),
          )
        ],
      ),
    ));
  }

  Container _containerOrderNow(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: GreengrocerConst.color_white,
        borderRadius: GreengrocerConst.borderRadiusCircular20,
      ),
      height: 40,
      width: 100,
      child: Center(
          child: Text(
        textAlign: TextAlign.start,
        GreengrocerConst.info_button_ordernow,
        style: Theme.of(context).textTheme.subtitle1?.copyWith(),
      )),
    );
  }

  Text _textOrder(BuildContext context) {
    return Text(
      GreengrocerConst.info_text_orderbest,
      textAlign: TextAlign.left,
      style: Theme.of(context).textTheme.headline5?.copyWith(
          color: GreengrocerConst.color_black,
          fontWeight: FontWeight.w500,
          fontSize: 22),
    );
  }

  Row _rowAppBar() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          children: [
            CircleAvatar(
              backgroundColor: GreengrocerConst.color_white,
              child: IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.format_align_center_sharp,
                  color: GreengrocerConst.color_black,
                ),
              ),
            ),
            GreengrocerConst.sizedBoxWidth15,
            Text(
              GreengrocerConst.info_text_location,
              style: TextStyle(),
            ),
            Icon(Icons.keyboard_arrow_down)
          ],
        ),
        CircleAvatar(
          backgroundColor: GreengrocerConst.color_white,
          child: IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.search,
                color: GreengrocerConst.color_black,
              )),
        )
      ],
    );
  }
}
